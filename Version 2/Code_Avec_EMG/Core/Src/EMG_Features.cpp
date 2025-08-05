#include "../Inc/EMG_Features.hpp"
#include <cmath> // fabsf, sqrtf, sinf, cosf

#ifndef M_PI
#define M_PI 3.14159265358979323846f
#endif

#define MAX_FFT_SIZE 4096

typedef struct {
    float real;
    float imag;
} Complex;

// Utilitaire signe (pour Zero Crossing)
static int sign(float val) {
    if (val > 0.0001f) return 1;
    if (val < -0.0001f) return -1;
    return 0;
}

void compute_simple_features(const float* window, int window_size, EMG_Features* features) {
    if (!window || window_size <= 1 || !features) return;

    float rms_sum = 0.0f, mav_sum = 0.0f, wl_sum = 0.0f;
    int zc_count = 0;

    for (int i = 0; i < window_size; ++i) {
        rms_sum += window[i] * window[i];
        mav_sum += fabsf(window[i]);
    }

    for (int i = 1; i < window_size; ++i) {
        wl_sum += fabsf(window[i] - window[i - 1]);
        if (sign(window[i]) != sign(window[i - 1])) {
            zc_count++;
        }
    }

    features->rms = sqrtf(rms_sum / window_size);
    features->mav = mav_sum / window_size;
    features->wl = wl_sum;
    features->zc = static_cast<float>(zc_count);
}

// Bit-reversal (réorganisation des indices FFT)
static void bit_reverse(Complex* data, int n) {
    int j = 0;
    for (int i = 0; i < n; ++i) {
        if (i < j) {
            Complex tmp = data[i];
            data[i] = data[j];
            data[j] = tmp;
        }
        int m = n >> 1;
        while (j >= m && m > 0) {
            j -= m;
            m >>= 1;
        }
        j += m;
    }
}

// FFT radix-2 Cooley-Tukey
static void fft_radix2(Complex* x, int n) {
    bit_reverse(x, n);
    for (int len = 2; len <= n; len <<= 1) {
        float angle = -2.0f * M_PI / len;
        Complex wlen = {cosf(angle), sinf(angle)};
        for (int i = 0; i < n; i += len) {
            Complex w = {1.0f, 0.0f};
            for (int j = 0; j < len / 2; ++j) {
                Complex u = x[i + j];
                Complex v = {
                    x[i + j + len/2].real * w.real - x[i + j + len/2].imag * w.imag,
                    x[i + j + len/2].real * w.imag + x[i + j + len/2].imag * w.real
                };
                x[i + j].real = u.real + v.real;
                x[i + j].imag = u.imag + v.imag;
                x[i + j + len/2].real = u.real - v.real;
                x[i + j + len/2].imag = u.imag - v.imag;

                Complex tmp = {
                    w.real * wlen.real - w.imag * wlen.imag,
                    w.real * wlen.imag + w.imag * wlen.real
                };
                w = tmp;
            }
        }
    }
}

void compute_fft_features(const float* window, int window_size, float sampling_rate, EMG_Features* features) {
    if (!window || !features || (window_size & (window_size - 1)) != 0 || window_size > MAX_FFT_SIZE) {
        features->mnf = -1.0f;
        features->mdf = -1.0f;
        return;
    }

    static Complex fft_buffer[MAX_FFT_SIZE];
    static float power_spectrum[MAX_FFT_SIZE / 2];

    // Copier les données réelles en entrée complexe
    for (int i = 0; i < window_size; ++i) {
        fft_buffer[i].real = window[i];
        fft_buffer[i].imag = 0.0f;
    }

    // Calcul FFT
    fft_radix2(fft_buffer, window_size);

    // Calcul du spectre de puissance
    for (int i = 0; i < window_size / 2; ++i) {
        float re = fft_buffer[i].real;
        float im = fft_buffer[i].imag;
        power_spectrum[i] = re * re + im * im;
    }

    float total_power = 0.0f;
    float weighted_sum = 0.0f;
    float freq_res = sampling_rate / window_size;

    for (int i = 0; i < window_size / 2; ++i) {
        float freq = i * freq_res;
        total_power += power_spectrum[i];
        weighted_sum += freq * power_spectrum[i];
    }

    if (total_power < 1e-9f) {
        features->mnf = 0.0f;
        features->mdf = 0.0f;
        return;
    }

    features->mnf = weighted_sum / total_power;

    // MDF
    float cumulative = 0.0f;
    for (int i = 0; i < window_size / 2; ++i) {
        cumulative += power_spectrum[i];
        if (cumulative >= total_power / 2.0f) {
            features->mdf = i * freq_res;
            break;
        }
    }
}

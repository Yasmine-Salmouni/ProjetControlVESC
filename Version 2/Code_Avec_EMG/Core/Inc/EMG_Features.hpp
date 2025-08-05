#ifndef EMG_FEATURES_HPP
#define EMG_FEATURES_HPP

#include <stdint.h>

// Structure pour contenir toutes les features
typedef struct {
    float rms; // Root Mean Square
    float mav; // Mean Absolute Value
    float zc;  // Zero Crossing
    float wl;  // Waveform Length
    float mdf; // Median Frequency
    float mnf; // Mean Frequency
    float fatigue_label; // Fatigue label, from user input
    float duration_since_start; // Durée écoulée depuis le début de l'exercice (en secondes)
} EMG_Features;

extern "C" {
    int get_fatigue_label();
}

void compute_simple_features(const float* window, int window_size, EMG_Features* features);
void compute_fft_features(const float* window, int window_size, float sampling_rate, EMG_Features* features);

#endif // EMG_FEATURES_HPP

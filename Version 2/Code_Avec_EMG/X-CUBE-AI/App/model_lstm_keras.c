/**
  ******************************************************************************
  * @file    model_lstm_keras.c
  * @author  AST Embedded Analytics Research Platform
  * @date    2025-07-30T19:00:57-0400
  * @brief   AI Tool Automatic Code Generator for Embedded NN computing
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  ******************************************************************************
  */


#include "model_lstm_keras.h"
#include "model_lstm_keras_data.h"

#include "ai_platform.h"
#include "ai_platform_interface.h"
#include "ai_math_helpers.h"

#include "core_common.h"
#include "core_convert.h"

#include "layers.h"



#undef AI_NET_OBJ_INSTANCE
#define AI_NET_OBJ_INSTANCE g_model_lstm_keras
 
#undef AI_MODEL_LSTM_KERAS_MODEL_SIGNATURE
#define AI_MODEL_LSTM_KERAS_MODEL_SIGNATURE     "0xb43f9b7eae8beb67f74e451bda9ab0d3"

#ifndef AI_TOOLS_REVISION_ID
#define AI_TOOLS_REVISION_ID     ""
#endif

#undef AI_TOOLS_DATE_TIME
#define AI_TOOLS_DATE_TIME   "2025-07-30T19:00:57-0400"

#undef AI_TOOLS_COMPILE_TIME
#define AI_TOOLS_COMPILE_TIME    __DATE__ " " __TIME__

#undef AI_MODEL_LSTM_KERAS_N_BATCHES
#define AI_MODEL_LSTM_KERAS_N_BATCHES         (1)

static ai_ptr g_model_lstm_keras_activations_map[1] = AI_C_ARRAY_INIT;
static ai_ptr g_model_lstm_keras_weights_map[1] = AI_C_ARRAY_INIT;



/**  Array declarations section  **********************************************/
/* Array#0 */
AI_ARRAY_OBJ_DECLARE(
  gemm_6_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#1 */
AI_ARRAY_OBJ_DECLARE(
  serving_default_lstm_input0_output_array, AI_ARRAY_FORMAT_FLOAT|AI_FMT_FLAG_IS_IO,
  NULL, NULL, 40, AI_STATIC)

/* Array#2 */
AI_ARRAY_OBJ_DECLARE(
  transpose_2_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 40, AI_STATIC)

/* Array#3 */
AI_ARRAY_OBJ_DECLARE(
  unpack_3_output0_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 8, AI_STATIC)

/* Array#4 */
AI_ARRAY_OBJ_DECLARE(
  unpack_3_output1_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 8, AI_STATIC)

/* Array#5 */
AI_ARRAY_OBJ_DECLARE(
  unpack_3_output2_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 8, AI_STATIC)

/* Array#6 */
AI_ARRAY_OBJ_DECLARE(
  unpack_3_output3_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 8, AI_STATIC)

/* Array#7 */
AI_ARRAY_OBJ_DECLARE(
  unpack_3_output4_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 8, AI_STATIC)

/* Array#8 */
AI_ARRAY_OBJ_DECLARE(
  gemm_7_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#9 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_8_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#10 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_9_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#11 */
AI_ARRAY_OBJ_DECLARE(
  split_10_output0_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#12 */
AI_ARRAY_OBJ_DECLARE(
  split_10_output1_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#13 */
AI_ARRAY_OBJ_DECLARE(
  split_10_output2_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#14 */
AI_ARRAY_OBJ_DECLARE(
  split_10_output3_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#15 */
AI_ARRAY_OBJ_DECLARE(
  nl_15_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#16 */
AI_ARRAY_OBJ_DECLARE(
  nl_14_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#17 */
AI_ARRAY_OBJ_DECLARE(
  nl_12_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#18 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_13_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#19 */
AI_ARRAY_OBJ_DECLARE(
  nl_11_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#20 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_16_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#21 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_17_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#22 */
AI_ARRAY_OBJ_DECLARE(
  nl_18_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#23 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_19_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#24 */
AI_ARRAY_OBJ_DECLARE(
  gemm_20_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#25 */
AI_ARRAY_OBJ_DECLARE(
  gemm_21_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#26 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_22_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#27 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_23_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#28 */
AI_ARRAY_OBJ_DECLARE(
  split_24_output0_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#29 */
AI_ARRAY_OBJ_DECLARE(
  split_24_output1_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#30 */
AI_ARRAY_OBJ_DECLARE(
  split_24_output2_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#31 */
AI_ARRAY_OBJ_DECLARE(
  split_24_output3_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#32 */
AI_ARRAY_OBJ_DECLARE(
  nl_29_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#33 */
AI_ARRAY_OBJ_DECLARE(
  nl_28_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#34 */
AI_ARRAY_OBJ_DECLARE(
  nl_26_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#35 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_27_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#36 */
AI_ARRAY_OBJ_DECLARE(
  nl_25_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#37 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_30_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#38 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_31_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#39 */
AI_ARRAY_OBJ_DECLARE(
  nl_32_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#40 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_33_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#41 */
AI_ARRAY_OBJ_DECLARE(
  gemm_34_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#42 */
AI_ARRAY_OBJ_DECLARE(
  gemm_35_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#43 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_36_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#44 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_37_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#45 */
AI_ARRAY_OBJ_DECLARE(
  split_38_output0_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#46 */
AI_ARRAY_OBJ_DECLARE(
  split_38_output1_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#47 */
AI_ARRAY_OBJ_DECLARE(
  split_38_output2_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#48 */
AI_ARRAY_OBJ_DECLARE(
  split_38_output3_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#49 */
AI_ARRAY_OBJ_DECLARE(
  nl_43_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#50 */
AI_ARRAY_OBJ_DECLARE(
  nl_42_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#51 */
AI_ARRAY_OBJ_DECLARE(
  nl_40_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#52 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_41_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#53 */
AI_ARRAY_OBJ_DECLARE(
  nl_39_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#54 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_44_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#55 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_45_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#56 */
AI_ARRAY_OBJ_DECLARE(
  nl_46_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#57 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_47_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#58 */
AI_ARRAY_OBJ_DECLARE(
  gemm_48_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#59 */
AI_ARRAY_OBJ_DECLARE(
  gemm_49_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#60 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_50_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#61 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_51_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#62 */
AI_ARRAY_OBJ_DECLARE(
  split_52_output0_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#63 */
AI_ARRAY_OBJ_DECLARE(
  split_52_output1_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#64 */
AI_ARRAY_OBJ_DECLARE(
  split_52_output2_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#65 */
AI_ARRAY_OBJ_DECLARE(
  split_52_output3_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#66 */
AI_ARRAY_OBJ_DECLARE(
  nl_57_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#67 */
AI_ARRAY_OBJ_DECLARE(
  nl_56_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#68 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_58_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#69 */
AI_ARRAY_OBJ_DECLARE(
  nl_55_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#70 */
AI_ARRAY_OBJ_DECLARE(
  nl_53_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#71 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_54_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#72 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_59_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#73 */
AI_ARRAY_OBJ_DECLARE(
  nl_60_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#74 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_61_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#75 */
AI_ARRAY_OBJ_DECLARE(
  gemm_62_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#76 */
AI_ARRAY_OBJ_DECLARE(
  gemm_63_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#77 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_64_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#78 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_65_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#79 */
AI_ARRAY_OBJ_DECLARE(
  split_66_output0_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#80 */
AI_ARRAY_OBJ_DECLARE(
  split_66_output1_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#81 */
AI_ARRAY_OBJ_DECLARE(
  split_66_output2_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#82 */
AI_ARRAY_OBJ_DECLARE(
  split_66_output3_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#83 */
AI_ARRAY_OBJ_DECLARE(
  nl_71_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#84 */
AI_ARRAY_OBJ_DECLARE(
  nl_70_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#85 */
AI_ARRAY_OBJ_DECLARE(
  nl_68_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#86 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_69_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#87 */
AI_ARRAY_OBJ_DECLARE(
  nl_67_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#88 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_72_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#89 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_73_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#90 */
AI_ARRAY_OBJ_DECLARE(
  nl_74_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#91 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_75_output_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#92 */
AI_ARRAY_OBJ_DECLARE(
  gemm_76_output_array, AI_ARRAY_FORMAT_FLOAT|AI_FMT_FLAG_IS_IO,
  NULL, NULL, 1, AI_STATIC)

/* Array#93 */
AI_ARRAY_OBJ_DECLARE(
  constantofshape_5_const_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#94 */
AI_ARRAY_OBJ_DECLARE(
  gemm_6_weights_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 4096, AI_STATIC)

/* Array#95 */
AI_ARRAY_OBJ_DECLARE(
  gemm_7_weights_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 1024, AI_STATIC)

/* Array#96 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_9_scale_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#97 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_9_bias_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 128, AI_STATIC)

/* Array#98 */
AI_ARRAY_OBJ_DECLARE(
  split_10_num_or_size_splits_array, AI_ARRAY_FORMAT_S32,
  NULL, NULL, 1, AI_STATIC)

/* Array#99 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_13_scale_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#100 */
AI_ARRAY_OBJ_DECLARE(
  eltwise_13_bias_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#101 */
AI_ARRAY_OBJ_DECLARE(
  split_24_num_or_size_splits_array, AI_ARRAY_FORMAT_S32,
  NULL, NULL, 1, AI_STATIC)

/* Array#102 */
AI_ARRAY_OBJ_DECLARE(
  split_38_num_or_size_splits_array, AI_ARRAY_FORMAT_S32,
  NULL, NULL, 1, AI_STATIC)

/* Array#103 */
AI_ARRAY_OBJ_DECLARE(
  split_52_num_or_size_splits_array, AI_ARRAY_FORMAT_S32,
  NULL, NULL, 1, AI_STATIC)

/* Array#104 */
AI_ARRAY_OBJ_DECLARE(
  split_66_num_or_size_splits_array, AI_ARRAY_FORMAT_S32,
  NULL, NULL, 1, AI_STATIC)

/* Array#105 */
AI_ARRAY_OBJ_DECLARE(
  gemm_76_weights_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 32, AI_STATIC)

/* Array#106 */
AI_ARRAY_OBJ_DECLARE(
  gemm_76_bias_array, AI_ARRAY_FORMAT_FLOAT,
  NULL, NULL, 1, AI_STATIC)

/**  Tensor declarations section  *********************************************/
/* Tensor #0 */
AI_TENSOR_OBJ_DECLARE(
  constantofshape_5_const, AI_STATIC,
  0, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &constantofshape_5_const_array, NULL)

/* Tensor #1 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_13_bias, AI_STATIC,
  1, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_13_bias_array, NULL)

/* Tensor #2 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_13_output, AI_STATIC,
  2, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_13_output_array, NULL)

/* Tensor #3 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_13_scale, AI_STATIC,
  3, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_13_scale_array, NULL)

/* Tensor #4 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_16_output, AI_STATIC,
  4, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_16_output_array, NULL)

/* Tensor #5 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_17_output, AI_STATIC,
  5, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_17_output_array, NULL)

/* Tensor #6 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_19_output, AI_STATIC,
  6, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_19_output_array, NULL)

/* Tensor #7 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_22_output, AI_STATIC,
  7, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &eltwise_22_output_array, NULL)

/* Tensor #8 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_23_output, AI_STATIC,
  8, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &eltwise_23_output_array, NULL)

/* Tensor #9 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_27_output, AI_STATIC,
  9, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_27_output_array, NULL)

/* Tensor #10 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_30_output, AI_STATIC,
  10, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_30_output_array, NULL)

/* Tensor #11 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_31_output, AI_STATIC,
  11, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_31_output_array, NULL)

/* Tensor #12 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_33_output, AI_STATIC,
  12, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_33_output_array, NULL)

/* Tensor #13 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_36_output, AI_STATIC,
  13, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &eltwise_36_output_array, NULL)

/* Tensor #14 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_37_output, AI_STATIC,
  14, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &eltwise_37_output_array, NULL)

/* Tensor #15 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_41_output, AI_STATIC,
  15, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_41_output_array, NULL)

/* Tensor #16 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_44_output, AI_STATIC,
  16, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_44_output_array, NULL)

/* Tensor #17 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_45_output, AI_STATIC,
  17, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_45_output_array, NULL)

/* Tensor #18 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_47_output, AI_STATIC,
  18, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_47_output_array, NULL)

/* Tensor #19 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_50_output, AI_STATIC,
  19, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &eltwise_50_output_array, NULL)

/* Tensor #20 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_51_output, AI_STATIC,
  20, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &eltwise_51_output_array, NULL)

/* Tensor #21 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_54_output, AI_STATIC,
  21, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_54_output_array, NULL)

/* Tensor #22 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_58_output, AI_STATIC,
  22, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_58_output_array, NULL)

/* Tensor #23 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_59_output, AI_STATIC,
  23, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_59_output_array, NULL)

/* Tensor #24 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_61_output, AI_STATIC,
  24, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_61_output_array, NULL)

/* Tensor #25 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_64_output, AI_STATIC,
  25, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &eltwise_64_output_array, NULL)

/* Tensor #26 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_65_output, AI_STATIC,
  26, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &eltwise_65_output_array, NULL)

/* Tensor #27 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_69_output, AI_STATIC,
  27, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_69_output_array, NULL)

/* Tensor #28 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_72_output, AI_STATIC,
  28, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_72_output_array, NULL)

/* Tensor #29 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_73_output, AI_STATIC,
  29, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_73_output_array, NULL)

/* Tensor #30 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_75_output, AI_STATIC,
  30, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &eltwise_75_output_array, NULL)

/* Tensor #31 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_8_output, AI_STATIC,
  31, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &eltwise_8_output_array, NULL)

/* Tensor #32 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_9_bias, AI_STATIC,
  32, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &eltwise_9_bias_array, NULL)

/* Tensor #33 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_9_output, AI_STATIC,
  33, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &eltwise_9_output_array, NULL)

/* Tensor #34 */
AI_TENSOR_OBJ_DECLARE(
  eltwise_9_scale, AI_STATIC,
  34, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &eltwise_9_scale_array, NULL)

/* Tensor #35 */
AI_TENSOR_OBJ_DECLARE(
  gemm_20_output, AI_STATIC,
  35, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &gemm_20_output_array, NULL)

/* Tensor #36 */
AI_TENSOR_OBJ_DECLARE(
  gemm_21_output, AI_STATIC,
  36, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &gemm_21_output_array, NULL)

/* Tensor #37 */
AI_TENSOR_OBJ_DECLARE(
  gemm_34_output, AI_STATIC,
  37, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &gemm_34_output_array, NULL)

/* Tensor #38 */
AI_TENSOR_OBJ_DECLARE(
  gemm_35_output, AI_STATIC,
  38, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &gemm_35_output_array, NULL)

/* Tensor #39 */
AI_TENSOR_OBJ_DECLARE(
  gemm_48_output, AI_STATIC,
  39, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &gemm_48_output_array, NULL)

/* Tensor #40 */
AI_TENSOR_OBJ_DECLARE(
  gemm_49_output, AI_STATIC,
  40, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &gemm_49_output_array, NULL)

/* Tensor #41 */
AI_TENSOR_OBJ_DECLARE(
  gemm_62_output, AI_STATIC,
  41, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &gemm_62_output_array, NULL)

/* Tensor #42 */
AI_TENSOR_OBJ_DECLARE(
  gemm_63_output, AI_STATIC,
  42, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &gemm_63_output_array, NULL)

/* Tensor #43 */
AI_TENSOR_OBJ_DECLARE(
  gemm_6_output, AI_STATIC,
  43, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &gemm_6_output_array, NULL)

/* Tensor #44 */
AI_TENSOR_OBJ_DECLARE(
  gemm_6_weights, AI_STATIC,
  44, 0x0,
  AI_SHAPE_INIT(4, 32, 128, 1, 1), AI_STRIDE_INIT(4, 4, 128, 16384, 16384),
  1, &gemm_6_weights_array, NULL)

/* Tensor #45 */
AI_TENSOR_OBJ_DECLARE(
  gemm_76_bias, AI_STATIC,
  45, 0x0,
  AI_SHAPE_INIT(4, 1, 1, 1, 1), AI_STRIDE_INIT(4, 4, 4, 4, 4),
  1, &gemm_76_bias_array, NULL)

/* Tensor #46 */
AI_TENSOR_OBJ_DECLARE(
  gemm_76_output, AI_STATIC,
  46, 0x0,
  AI_SHAPE_INIT(4, 1, 1, 1, 1), AI_STRIDE_INIT(4, 4, 4, 4, 4),
  1, &gemm_76_output_array, NULL)

/* Tensor #47 */
AI_TENSOR_OBJ_DECLARE(
  gemm_76_weights, AI_STATIC,
  47, 0x0,
  AI_SHAPE_INIT(4, 32, 1, 1, 1), AI_STRIDE_INIT(4, 4, 128, 128, 128),
  1, &gemm_76_weights_array, NULL)

/* Tensor #48 */
AI_TENSOR_OBJ_DECLARE(
  gemm_7_output, AI_STATIC,
  48, 0x0,
  AI_SHAPE_INIT(4, 1, 128, 1, 1), AI_STRIDE_INIT(4, 4, 4, 512, 512),
  1, &gemm_7_output_array, NULL)

/* Tensor #49 */
AI_TENSOR_OBJ_DECLARE(
  gemm_7_weights, AI_STATIC,
  49, 0x0,
  AI_SHAPE_INIT(4, 8, 128, 1, 1), AI_STRIDE_INIT(4, 4, 32, 4096, 4096),
  1, &gemm_7_weights_array, NULL)

/* Tensor #50 */
AI_TENSOR_OBJ_DECLARE(
  nl_11_output, AI_STATIC,
  50, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_11_output_array, NULL)

/* Tensor #51 */
AI_TENSOR_OBJ_DECLARE(
  nl_12_output, AI_STATIC,
  51, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_12_output_array, NULL)

/* Tensor #52 */
AI_TENSOR_OBJ_DECLARE(
  nl_14_output, AI_STATIC,
  52, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_14_output_array, NULL)

/* Tensor #53 */
AI_TENSOR_OBJ_DECLARE(
  nl_15_output, AI_STATIC,
  53, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_15_output_array, NULL)

/* Tensor #54 */
AI_TENSOR_OBJ_DECLARE(
  nl_18_output, AI_STATIC,
  54, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_18_output_array, NULL)

/* Tensor #55 */
AI_TENSOR_OBJ_DECLARE(
  nl_25_output, AI_STATIC,
  55, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_25_output_array, NULL)

/* Tensor #56 */
AI_TENSOR_OBJ_DECLARE(
  nl_26_output, AI_STATIC,
  56, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_26_output_array, NULL)

/* Tensor #57 */
AI_TENSOR_OBJ_DECLARE(
  nl_28_output, AI_STATIC,
  57, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_28_output_array, NULL)

/* Tensor #58 */
AI_TENSOR_OBJ_DECLARE(
  nl_29_output, AI_STATIC,
  58, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_29_output_array, NULL)

/* Tensor #59 */
AI_TENSOR_OBJ_DECLARE(
  nl_32_output, AI_STATIC,
  59, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_32_output_array, NULL)

/* Tensor #60 */
AI_TENSOR_OBJ_DECLARE(
  nl_39_output, AI_STATIC,
  60, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_39_output_array, NULL)

/* Tensor #61 */
AI_TENSOR_OBJ_DECLARE(
  nl_40_output, AI_STATIC,
  61, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_40_output_array, NULL)

/* Tensor #62 */
AI_TENSOR_OBJ_DECLARE(
  nl_42_output, AI_STATIC,
  62, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_42_output_array, NULL)

/* Tensor #63 */
AI_TENSOR_OBJ_DECLARE(
  nl_43_output, AI_STATIC,
  63, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_43_output_array, NULL)

/* Tensor #64 */
AI_TENSOR_OBJ_DECLARE(
  nl_46_output, AI_STATIC,
  64, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_46_output_array, NULL)

/* Tensor #65 */
AI_TENSOR_OBJ_DECLARE(
  nl_53_output, AI_STATIC,
  65, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_53_output_array, NULL)

/* Tensor #66 */
AI_TENSOR_OBJ_DECLARE(
  nl_55_output, AI_STATIC,
  66, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_55_output_array, NULL)

/* Tensor #67 */
AI_TENSOR_OBJ_DECLARE(
  nl_56_output, AI_STATIC,
  67, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_56_output_array, NULL)

/* Tensor #68 */
AI_TENSOR_OBJ_DECLARE(
  nl_57_output, AI_STATIC,
  68, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_57_output_array, NULL)

/* Tensor #69 */
AI_TENSOR_OBJ_DECLARE(
  nl_60_output, AI_STATIC,
  69, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_60_output_array, NULL)

/* Tensor #70 */
AI_TENSOR_OBJ_DECLARE(
  nl_67_output, AI_STATIC,
  70, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_67_output_array, NULL)

/* Tensor #71 */
AI_TENSOR_OBJ_DECLARE(
  nl_68_output, AI_STATIC,
  71, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_68_output_array, NULL)

/* Tensor #72 */
AI_TENSOR_OBJ_DECLARE(
  nl_70_output, AI_STATIC,
  72, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_70_output_array, NULL)

/* Tensor #73 */
AI_TENSOR_OBJ_DECLARE(
  nl_71_output, AI_STATIC,
  73, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_71_output_array, NULL)

/* Tensor #74 */
AI_TENSOR_OBJ_DECLARE(
  nl_74_output, AI_STATIC,
  74, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &nl_74_output_array, NULL)

/* Tensor #75 */
AI_TENSOR_OBJ_DECLARE(
  serving_default_lstm_input0_output, AI_STATIC,
  75, 0x0,
  AI_SHAPE_INIT(4, 1, 8, 1, 5), AI_STRIDE_INIT(4, 4, 4, 32, 32),
  1, &serving_default_lstm_input0_output_array, NULL)

/* Tensor #76 */
AI_TENSOR_OBJ_DECLARE(
  serving_default_lstm_input0_output0, AI_STATIC,
  76, 0x0,
  AI_SHAPE_INIT(4, 1, 8, 5, 1), AI_STRIDE_INIT(4, 4, 4, 32, 160),
  1, &serving_default_lstm_input0_output_array, NULL)

/* Tensor #77 */
AI_TENSOR_OBJ_DECLARE(
  split_10_num_or_size_splits, AI_STATIC,
  77, 0x0,
  AI_SHAPE_INIT(4, 1, 1, 1, 1), AI_STRIDE_INIT(4, 4, 4, 4, 4),
  1, &split_10_num_or_size_splits_array, NULL)

/* Tensor #78 */
AI_TENSOR_OBJ_DECLARE(
  split_10_output0, AI_STATIC,
  78, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_10_output0_array, NULL)

/* Tensor #79 */
AI_TENSOR_OBJ_DECLARE(
  split_10_output1, AI_STATIC,
  79, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_10_output1_array, NULL)

/* Tensor #80 */
AI_TENSOR_OBJ_DECLARE(
  split_10_output2, AI_STATIC,
  80, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_10_output2_array, NULL)

/* Tensor #81 */
AI_TENSOR_OBJ_DECLARE(
  split_10_output3, AI_STATIC,
  81, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_10_output3_array, NULL)

/* Tensor #82 */
AI_TENSOR_OBJ_DECLARE(
  split_24_num_or_size_splits, AI_STATIC,
  82, 0x0,
  AI_SHAPE_INIT(4, 1, 1, 1, 1), AI_STRIDE_INIT(4, 4, 4, 4, 4),
  1, &split_24_num_or_size_splits_array, NULL)

/* Tensor #83 */
AI_TENSOR_OBJ_DECLARE(
  split_24_output0, AI_STATIC,
  83, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_24_output0_array, NULL)

/* Tensor #84 */
AI_TENSOR_OBJ_DECLARE(
  split_24_output1, AI_STATIC,
  84, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_24_output1_array, NULL)

/* Tensor #85 */
AI_TENSOR_OBJ_DECLARE(
  split_24_output2, AI_STATIC,
  85, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_24_output2_array, NULL)

/* Tensor #86 */
AI_TENSOR_OBJ_DECLARE(
  split_24_output3, AI_STATIC,
  86, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_24_output3_array, NULL)

/* Tensor #87 */
AI_TENSOR_OBJ_DECLARE(
  split_38_num_or_size_splits, AI_STATIC,
  87, 0x0,
  AI_SHAPE_INIT(4, 1, 1, 1, 1), AI_STRIDE_INIT(4, 4, 4, 4, 4),
  1, &split_38_num_or_size_splits_array, NULL)

/* Tensor #88 */
AI_TENSOR_OBJ_DECLARE(
  split_38_output0, AI_STATIC,
  88, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_38_output0_array, NULL)

/* Tensor #89 */
AI_TENSOR_OBJ_DECLARE(
  split_38_output1, AI_STATIC,
  89, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_38_output1_array, NULL)

/* Tensor #90 */
AI_TENSOR_OBJ_DECLARE(
  split_38_output2, AI_STATIC,
  90, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_38_output2_array, NULL)

/* Tensor #91 */
AI_TENSOR_OBJ_DECLARE(
  split_38_output3, AI_STATIC,
  91, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_38_output3_array, NULL)

/* Tensor #92 */
AI_TENSOR_OBJ_DECLARE(
  split_52_num_or_size_splits, AI_STATIC,
  92, 0x0,
  AI_SHAPE_INIT(4, 1, 1, 1, 1), AI_STRIDE_INIT(4, 4, 4, 4, 4),
  1, &split_52_num_or_size_splits_array, NULL)

/* Tensor #93 */
AI_TENSOR_OBJ_DECLARE(
  split_52_output0, AI_STATIC,
  93, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_52_output0_array, NULL)

/* Tensor #94 */
AI_TENSOR_OBJ_DECLARE(
  split_52_output1, AI_STATIC,
  94, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_52_output1_array, NULL)

/* Tensor #95 */
AI_TENSOR_OBJ_DECLARE(
  split_52_output2, AI_STATIC,
  95, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_52_output2_array, NULL)

/* Tensor #96 */
AI_TENSOR_OBJ_DECLARE(
  split_52_output3, AI_STATIC,
  96, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_52_output3_array, NULL)

/* Tensor #97 */
AI_TENSOR_OBJ_DECLARE(
  split_66_num_or_size_splits, AI_STATIC,
  97, 0x0,
  AI_SHAPE_INIT(4, 1, 1, 1, 1), AI_STRIDE_INIT(4, 4, 4, 4, 4),
  1, &split_66_num_or_size_splits_array, NULL)

/* Tensor #98 */
AI_TENSOR_OBJ_DECLARE(
  split_66_output0, AI_STATIC,
  98, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_66_output0_array, NULL)

/* Tensor #99 */
AI_TENSOR_OBJ_DECLARE(
  split_66_output1, AI_STATIC,
  99, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_66_output1_array, NULL)

/* Tensor #100 */
AI_TENSOR_OBJ_DECLARE(
  split_66_output2, AI_STATIC,
  100, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_66_output2_array, NULL)

/* Tensor #101 */
AI_TENSOR_OBJ_DECLARE(
  split_66_output3, AI_STATIC,
  101, 0x0,
  AI_SHAPE_INIT(4, 1, 32, 1, 1), AI_STRIDE_INIT(4, 4, 4, 128, 128),
  1, &split_66_output3_array, NULL)

/* Tensor #102 */
AI_TENSOR_OBJ_DECLARE(
  transpose_2_output, AI_STATIC,
  102, 0x0,
  AI_SHAPE_INIT(4, 1, 8, 1, 5), AI_STRIDE_INIT(4, 4, 4, 32, 32),
  1, &transpose_2_output_array, NULL)

/* Tensor #103 */
AI_TENSOR_OBJ_DECLARE(
  unpack_3_output0, AI_STATIC,
  103, 0x0,
  AI_SHAPE_INIT(4, 1, 8, 1, 1), AI_STRIDE_INIT(4, 4, 4, 32, 32),
  1, &unpack_3_output0_array, NULL)

/* Tensor #104 */
AI_TENSOR_OBJ_DECLARE(
  unpack_3_output1, AI_STATIC,
  104, 0x0,
  AI_SHAPE_INIT(4, 1, 8, 1, 1), AI_STRIDE_INIT(4, 4, 4, 32, 32),
  1, &unpack_3_output1_array, NULL)

/* Tensor #105 */
AI_TENSOR_OBJ_DECLARE(
  unpack_3_output2, AI_STATIC,
  105, 0x0,
  AI_SHAPE_INIT(4, 1, 8, 1, 1), AI_STRIDE_INIT(4, 4, 4, 32, 32),
  1, &unpack_3_output2_array, NULL)

/* Tensor #106 */
AI_TENSOR_OBJ_DECLARE(
  unpack_3_output3, AI_STATIC,
  106, 0x0,
  AI_SHAPE_INIT(4, 1, 8, 1, 1), AI_STRIDE_INIT(4, 4, 4, 32, 32),
  1, &unpack_3_output3_array, NULL)

/* Tensor #107 */
AI_TENSOR_OBJ_DECLARE(
  unpack_3_output4, AI_STATIC,
  107, 0x0,
  AI_SHAPE_INIT(4, 1, 8, 1, 1), AI_STRIDE_INIT(4, 4, 4, 32, 32),
  1, &unpack_3_output4_array, NULL)



/**  Layer declarations section  **********************************************/


AI_TENSOR_CHAIN_OBJ_DECLARE(
  gemm_76_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_75_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_76_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &gemm_76_weights, &gemm_76_bias),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  gemm_76_layer, 76,
  DENSE_TYPE, 0x0, NULL,
  dense, forward_dense,
  &gemm_76_chain,
  NULL, &gemm_76_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_75_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_70_output, &nl_74_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_75_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_75_layer, 75,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_75_chain,
  NULL, &gemm_76_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_74_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_73_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_74_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_74_layer, 74,
  NL_TYPE, 0x0, NULL,
  nl, forward_tanh,
  &nl_74_chain,
  NULL, &eltwise_75_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_73_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &eltwise_69_output, &eltwise_72_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_73_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_73_layer, 73,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_73_chain,
  NULL, &nl_74_layer, AI_STATIC, 
  .operation = ai_sum_f32, 
  .buffer_operation = ai_sum_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_72_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_67_output, &nl_71_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_72_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_72_layer, 72,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_72_chain,
  NULL, &eltwise_73_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_67_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_66_output0),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_67_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_67_layer, 67,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_67_chain,
  NULL, &eltwise_72_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_69_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_68_output, &eltwise_59_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_69_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_69_layer, 69,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_69_chain,
  NULL, &nl_67_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_68_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_66_output1),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_68_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_68_layer, 68,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_68_chain,
  NULL, &eltwise_69_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_70_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_66_output3),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_70_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_70_layer, 70,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_70_chain,
  NULL, &nl_68_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_71_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_66_output2),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_71_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_71_layer, 71,
  NL_TYPE, 0x0, NULL,
  nl, forward_tanh,
  &nl_71_chain,
  NULL, &nl_70_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  split_66_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_65_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 4, &split_66_output0, &split_66_output1, &split_66_output2, &split_66_output3),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_66_num_or_size_splits),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  split_66_layer, 66,
  SPLIT_TYPE, 0x0, NULL,
  split, forward_split,
  &split_66_chain,
  NULL, &nl_71_layer, AI_STATIC, 
  .outer_elems = 1, 
  .outer_elems_stride = 512, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_65_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_64_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_65_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &eltwise_9_scale, &eltwise_9_bias),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_65_layer, 65,
  BN_TYPE, 0x0, NULL,
  bn, forward_bn,
  &eltwise_65_chain,
  NULL, &split_66_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_64_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &gemm_63_output, &gemm_62_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_64_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_64_layer, 64,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_64_chain,
  NULL, &eltwise_65_layer, AI_STATIC, 
  .operation = ai_sum_f32, 
  .buffer_operation = ai_sum_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  gemm_63_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &unpack_3_output4),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_63_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_7_weights),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  gemm_63_layer, 63,
  DENSE_TYPE, 0x0, NULL,
  dense, forward_dense,
  &gemm_63_chain,
  NULL, &eltwise_64_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  gemm_62_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_61_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_62_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_6_weights),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  gemm_62_layer, 62,
  DENSE_TYPE, 0x0, NULL,
  dense, forward_dense,
  &gemm_62_chain,
  NULL, &gemm_63_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_61_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_55_output, &nl_60_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_61_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_61_layer, 61,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_61_chain,
  NULL, &gemm_62_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_60_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_59_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_60_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_60_layer, 60,
  NL_TYPE, 0x0, NULL,
  nl, forward_tanh,
  &nl_60_chain,
  NULL, &eltwise_61_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_59_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &eltwise_54_output, &eltwise_58_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_59_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_59_layer, 59,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_59_chain,
  NULL, &nl_60_layer, AI_STATIC, 
  .operation = ai_sum_f32, 
  .buffer_operation = ai_sum_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_54_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_53_output, &eltwise_45_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_54_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_54_layer, 54,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_54_chain,
  NULL, &eltwise_59_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_53_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_52_output1),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_53_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_53_layer, 53,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_53_chain,
  NULL, &eltwise_54_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_55_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_52_output3),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_55_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_55_layer, 55,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_55_chain,
  NULL, &nl_53_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_58_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_56_output, &nl_57_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_58_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_58_layer, 58,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_58_chain,
  NULL, &nl_55_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_56_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_52_output0),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_56_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_56_layer, 56,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_56_chain,
  NULL, &eltwise_58_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_57_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_52_output2),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_57_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_57_layer, 57,
  NL_TYPE, 0x0, NULL,
  nl, forward_tanh,
  &nl_57_chain,
  NULL, &nl_56_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  split_52_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_51_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 4, &split_52_output0, &split_52_output1, &split_52_output2, &split_52_output3),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_52_num_or_size_splits),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  split_52_layer, 52,
  SPLIT_TYPE, 0x0, NULL,
  split, forward_split,
  &split_52_chain,
  NULL, &nl_57_layer, AI_STATIC, 
  .outer_elems = 1, 
  .outer_elems_stride = 512, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_51_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_50_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_51_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &eltwise_9_scale, &eltwise_9_bias),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_51_layer, 51,
  BN_TYPE, 0x0, NULL,
  bn, forward_bn,
  &eltwise_51_chain,
  NULL, &split_52_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_50_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &gemm_49_output, &gemm_48_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_50_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_50_layer, 50,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_50_chain,
  NULL, &eltwise_51_layer, AI_STATIC, 
  .operation = ai_sum_f32, 
  .buffer_operation = ai_sum_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  gemm_49_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &unpack_3_output3),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_49_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_7_weights),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  gemm_49_layer, 49,
  DENSE_TYPE, 0x0, NULL,
  dense, forward_dense,
  &gemm_49_chain,
  NULL, &eltwise_50_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  gemm_48_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_47_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_48_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_6_weights),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  gemm_48_layer, 48,
  DENSE_TYPE, 0x0, NULL,
  dense, forward_dense,
  &gemm_48_chain,
  NULL, &gemm_49_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_47_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_42_output, &nl_46_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_47_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_47_layer, 47,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_47_chain,
  NULL, &gemm_48_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_46_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_45_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_46_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_46_layer, 46,
  NL_TYPE, 0x0, NULL,
  nl, forward_tanh,
  &nl_46_chain,
  NULL, &eltwise_47_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_45_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &eltwise_41_output, &eltwise_44_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_45_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_45_layer, 45,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_45_chain,
  NULL, &nl_46_layer, AI_STATIC, 
  .operation = ai_sum_f32, 
  .buffer_operation = ai_sum_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_44_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_39_output, &nl_43_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_44_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_44_layer, 44,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_44_chain,
  NULL, &eltwise_45_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_39_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_38_output0),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_39_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_39_layer, 39,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_39_chain,
  NULL, &eltwise_44_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_41_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_40_output, &eltwise_31_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_41_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_41_layer, 41,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_41_chain,
  NULL, &nl_39_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_40_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_38_output1),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_40_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_40_layer, 40,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_40_chain,
  NULL, &eltwise_41_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_42_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_38_output3),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_42_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_42_layer, 42,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_42_chain,
  NULL, &nl_40_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_43_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_38_output2),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_43_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_43_layer, 43,
  NL_TYPE, 0x0, NULL,
  nl, forward_tanh,
  &nl_43_chain,
  NULL, &nl_42_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  split_38_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_37_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 4, &split_38_output0, &split_38_output1, &split_38_output2, &split_38_output3),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_38_num_or_size_splits),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  split_38_layer, 38,
  SPLIT_TYPE, 0x0, NULL,
  split, forward_split,
  &split_38_chain,
  NULL, &nl_43_layer, AI_STATIC, 
  .outer_elems = 1, 
  .outer_elems_stride = 512, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_37_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_36_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_37_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &eltwise_9_scale, &eltwise_9_bias),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_37_layer, 37,
  BN_TYPE, 0x0, NULL,
  bn, forward_bn,
  &eltwise_37_chain,
  NULL, &split_38_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_36_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &gemm_35_output, &gemm_34_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_36_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_36_layer, 36,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_36_chain,
  NULL, &eltwise_37_layer, AI_STATIC, 
  .operation = ai_sum_f32, 
  .buffer_operation = ai_sum_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  gemm_35_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &unpack_3_output2),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_35_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_7_weights),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  gemm_35_layer, 35,
  DENSE_TYPE, 0x0, NULL,
  dense, forward_dense,
  &gemm_35_chain,
  NULL, &eltwise_36_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  gemm_34_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_33_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_34_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_6_weights),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  gemm_34_layer, 34,
  DENSE_TYPE, 0x0, NULL,
  dense, forward_dense,
  &gemm_34_chain,
  NULL, &gemm_35_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_33_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_28_output, &nl_32_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_33_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_33_layer, 33,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_33_chain,
  NULL, &gemm_34_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_32_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_31_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_32_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_32_layer, 32,
  NL_TYPE, 0x0, NULL,
  nl, forward_tanh,
  &nl_32_chain,
  NULL, &eltwise_33_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_31_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &eltwise_27_output, &eltwise_30_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_31_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_31_layer, 31,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_31_chain,
  NULL, &nl_32_layer, AI_STATIC, 
  .operation = ai_sum_f32, 
  .buffer_operation = ai_sum_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_30_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_25_output, &nl_29_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_30_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_30_layer, 30,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_30_chain,
  NULL, &eltwise_31_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_25_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_24_output0),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_25_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_25_layer, 25,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_25_chain,
  NULL, &eltwise_30_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_27_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_26_output, &eltwise_17_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_27_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_27_layer, 27,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_27_chain,
  NULL, &nl_25_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_26_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_24_output1),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_26_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_26_layer, 26,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_26_chain,
  NULL, &eltwise_27_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_28_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_24_output3),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_28_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_28_layer, 28,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_28_chain,
  NULL, &nl_26_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_29_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_24_output2),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_29_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_29_layer, 29,
  NL_TYPE, 0x0, NULL,
  nl, forward_tanh,
  &nl_29_chain,
  NULL, &nl_28_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  split_24_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_23_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 4, &split_24_output0, &split_24_output1, &split_24_output2, &split_24_output3),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_24_num_or_size_splits),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  split_24_layer, 24,
  SPLIT_TYPE, 0x0, NULL,
  split, forward_split,
  &split_24_chain,
  NULL, &nl_29_layer, AI_STATIC, 
  .outer_elems = 1, 
  .outer_elems_stride = 512, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_23_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_22_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_23_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &eltwise_9_scale, &eltwise_9_bias),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_23_layer, 23,
  BN_TYPE, 0x0, NULL,
  bn, forward_bn,
  &eltwise_23_chain,
  NULL, &split_24_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_22_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &gemm_21_output, &gemm_20_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_22_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_22_layer, 22,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_22_chain,
  NULL, &eltwise_23_layer, AI_STATIC, 
  .operation = ai_sum_f32, 
  .buffer_operation = ai_sum_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  gemm_21_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &unpack_3_output1),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_21_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_7_weights),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  gemm_21_layer, 21,
  DENSE_TYPE, 0x0, NULL,
  dense, forward_dense,
  &gemm_21_chain,
  NULL, &eltwise_22_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  gemm_20_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_19_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_20_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_6_weights),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  gemm_20_layer, 20,
  DENSE_TYPE, 0x0, NULL,
  dense, forward_dense,
  &gemm_20_chain,
  NULL, &gemm_21_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_19_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_14_output, &nl_18_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_19_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_19_layer, 19,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_19_chain,
  NULL, &gemm_20_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_18_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_17_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_18_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_18_layer, 18,
  NL_TYPE, 0x0, NULL,
  nl, forward_tanh,
  &nl_18_chain,
  NULL, &eltwise_19_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_17_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &eltwise_13_output, &eltwise_16_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_17_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_17_layer, 17,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_17_chain,
  NULL, &nl_18_layer, AI_STATIC, 
  .operation = ai_sum_f32, 
  .buffer_operation = ai_sum_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_16_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &nl_11_output, &nl_15_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_16_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_16_layer, 16,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_16_chain,
  NULL, &eltwise_17_layer, AI_STATIC, 
  .operation = ai_mul_f32, 
  .buffer_operation = ai_mul_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_11_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_10_output0),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_11_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_11_layer, 11,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_11_chain,
  NULL, &eltwise_16_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_13_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_12_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_13_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &eltwise_13_scale, &eltwise_13_bias),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_13_layer, 13,
  BN_TYPE, 0x0, NULL,
  bn, forward_bn,
  &eltwise_13_chain,
  NULL, &nl_11_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_12_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_10_output1),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_12_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_12_layer, 12,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_12_chain,
  NULL, &eltwise_13_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_14_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_10_output3),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_14_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_14_layer, 14,
  NL_TYPE, 0x0, NULL,
  nl, forward_sigmoid,
  &nl_14_chain,
  NULL, &nl_12_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  nl_15_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_10_output2),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &nl_15_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  nl_15_layer, 15,
  NL_TYPE, 0x0, NULL,
  nl, forward_tanh,
  &nl_15_chain,
  NULL, &nl_14_layer, AI_STATIC, 
  .nl_params = NULL, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  split_10_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_9_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 4, &split_10_output0, &split_10_output1, &split_10_output2, &split_10_output3),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &split_10_num_or_size_splits),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  split_10_layer, 10,
  SPLIT_TYPE, 0x0, NULL,
  split, forward_split,
  &split_10_chain,
  NULL, &nl_15_layer, AI_STATIC, 
  .outer_elems = 1, 
  .outer_elems_stride = 512, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_9_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_8_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_9_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &eltwise_9_scale, &eltwise_9_bias),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_9_layer, 9,
  BN_TYPE, 0x0, NULL,
  bn, forward_bn,
  &eltwise_9_chain,
  NULL, &split_10_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  eltwise_8_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 2, &gemm_7_output, &gemm_6_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &eltwise_8_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  eltwise_8_layer, 8,
  ELTWISE_TYPE, 0x0, NULL,
  eltwise, forward_eltwise,
  &eltwise_8_chain,
  NULL, &eltwise_9_layer, AI_STATIC, 
  .operation = ai_sum_f32, 
  .buffer_operation = ai_sum_buffer_f32, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  gemm_7_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &unpack_3_output0),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_7_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_7_weights),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  gemm_7_layer, 7,
  DENSE_TYPE, 0x0, NULL,
  dense, forward_dense,
  &gemm_7_chain,
  NULL, &eltwise_8_layer, AI_STATIC, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  unpack_3_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &transpose_2_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 5, &unpack_3_output0, &unpack_3_output1, &unpack_3_output2, &unpack_3_output3, &unpack_3_output4),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  unpack_3_layer, 3,
  UNPACK_TYPE, 0x0, NULL,
  unpack, forward_unpack,
  &unpack_3_chain,
  NULL, &gemm_7_layer, AI_STATIC, 
  .axis = AI_SHAPE_HEIGHT, 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  transpose_2_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &serving_default_lstm_input0_output0),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &transpose_2_output),
  AI_TENSOR_LIST_OBJ_EMPTY,
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  transpose_2_layer, 2,
  TRANSPOSE_TYPE, 0x0, NULL,
  transpose, forward_transpose,
  &transpose_2_chain,
  NULL, &unpack_3_layer, AI_STATIC, 
  .out_mapping = AI_SHAPE_INIT(6, AI_SHAPE_IN_CHANNEL, AI_SHAPE_CHANNEL, AI_SHAPE_HEIGHT, AI_SHAPE_WIDTH, AI_SHAPE_DEPTH, AI_SHAPE_EXTENSION), 
)

AI_TENSOR_CHAIN_OBJ_DECLARE(
  gemm_6_chain, AI_STATIC_CONST, 4,
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &constantofshape_5_const),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_6_output),
  AI_TENSOR_LIST_OBJ_INIT(AI_FLAG_NONE, 1, &gemm_6_weights),
  AI_TENSOR_LIST_OBJ_EMPTY
)

AI_LAYER_OBJ_DECLARE(
  gemm_6_layer, 6,
  DENSE_TYPE, 0x0, NULL,
  dense, forward_dense,
  &gemm_6_chain,
  NULL, &transpose_2_layer, AI_STATIC, 
)


#if (AI_TOOLS_API_VERSION < AI_TOOLS_API_VERSION_1_5)

AI_NETWORK_OBJ_DECLARE(
  AI_NET_OBJ_INSTANCE, AI_STATIC,
  AI_BUFFER_INIT(AI_FLAG_NONE,  AI_BUFFER_FORMAT_U8,
    AI_BUFFER_SHAPE_INIT(AI_SHAPE_BCWH, 4, 1, 22040, 1, 1),
    22040, NULL, NULL),
  AI_BUFFER_INIT(AI_FLAG_NONE,  AI_BUFFER_FORMAT_U8,
    AI_BUFFER_SHAPE_INIT(AI_SHAPE_BCWH, 4, 1, 1440, 1, 1),
    1440, NULL, NULL),
  AI_TENSOR_LIST_IO_OBJ_INIT(AI_FLAG_NONE, AI_MODEL_LSTM_KERAS_IN_NUM, &serving_default_lstm_input0_output),
  AI_TENSOR_LIST_IO_OBJ_INIT(AI_FLAG_NONE, AI_MODEL_LSTM_KERAS_OUT_NUM, &gemm_76_output),
  &gemm_6_layer, 0xd3ea447b, NULL)

#else

AI_NETWORK_OBJ_DECLARE(
  AI_NET_OBJ_INSTANCE, AI_STATIC,
  AI_BUFFER_ARRAY_OBJ_INIT_STATIC(
  	AI_FLAG_NONE, 1,
    AI_BUFFER_INIT(AI_FLAG_NONE,  AI_BUFFER_FORMAT_U8,
      AI_BUFFER_SHAPE_INIT(AI_SHAPE_BCWH, 4, 1, 22040, 1, 1),
      22040, NULL, NULL)
  ),
  AI_BUFFER_ARRAY_OBJ_INIT_STATIC(
  	AI_FLAG_NONE, 1,
    AI_BUFFER_INIT(AI_FLAG_NONE,  AI_BUFFER_FORMAT_U8,
      AI_BUFFER_SHAPE_INIT(AI_SHAPE_BCWH, 4, 1, 1440, 1, 1),
      1440, NULL, NULL)
  ),
  AI_TENSOR_LIST_IO_OBJ_INIT(AI_FLAG_NONE, AI_MODEL_LSTM_KERAS_IN_NUM, &serving_default_lstm_input0_output),
  AI_TENSOR_LIST_IO_OBJ_INIT(AI_FLAG_NONE, AI_MODEL_LSTM_KERAS_OUT_NUM, &gemm_76_output),
  &gemm_6_layer, 0xd3ea447b, NULL)

#endif	/*(AI_TOOLS_API_VERSION < AI_TOOLS_API_VERSION_1_5)*/



/******************************************************************************/
AI_DECLARE_STATIC
ai_bool model_lstm_keras_configure_activations(
  ai_network* net_ctx, const ai_network_params* params)
{
  AI_ASSERT(net_ctx)

  if (ai_platform_get_activations_map(g_model_lstm_keras_activations_map, 1, params)) {
    /* Updating activations (byte) offsets */
    
    serving_default_lstm_input0_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 736);
    serving_default_lstm_input0_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 736);
    gemm_6_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 896);
    gemm_6_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 896);
    transpose_2_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 576);
    transpose_2_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 576);
    unpack_3_output0_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 864);
    unpack_3_output0_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 864);
    unpack_3_output1_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 832);
    unpack_3_output1_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 832);
    unpack_3_output2_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 800);
    unpack_3_output2_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 800);
    unpack_3_output3_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 768);
    unpack_3_output3_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 768);
    unpack_3_output4_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 1408);
    unpack_3_output4_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 1408);
    gemm_7_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    gemm_7_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    eltwise_8_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    eltwise_8_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    eltwise_9_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 864);
    eltwise_9_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 864);
    split_10_output0_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    split_10_output0_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    split_10_output1_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    split_10_output1_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    split_10_output2_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    split_10_output2_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    split_10_output3_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    split_10_output3_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    nl_15_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 864);
    nl_15_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 864);
    nl_14_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    nl_14_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    nl_12_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    nl_12_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    eltwise_13_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 992);
    eltwise_13_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 992);
    nl_11_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    nl_11_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    eltwise_16_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 1280);
    eltwise_16_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 1280);
    eltwise_17_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    eltwise_17_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    nl_18_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 1280);
    nl_18_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 1280);
    eltwise_19_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    eltwise_19_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    gemm_20_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 896);
    gemm_20_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 896);
    gemm_21_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    gemm_21_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    eltwise_22_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    eltwise_22_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    eltwise_23_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 832);
    eltwise_23_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 832);
    split_24_output0_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    split_24_output0_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    split_24_output1_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    split_24_output1_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    split_24_output2_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    split_24_output2_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    split_24_output3_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    split_24_output3_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    nl_29_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 832);
    nl_29_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 832);
    nl_28_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    nl_28_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    nl_26_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    nl_26_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    eltwise_27_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    eltwise_27_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    nl_25_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    nl_25_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    eltwise_30_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    eltwise_30_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    eltwise_31_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    eltwise_31_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    nl_32_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 1280);
    nl_32_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 1280);
    eltwise_33_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    eltwise_33_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    gemm_34_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 896);
    gemm_34_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 896);
    gemm_35_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    gemm_35_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_36_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_36_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_37_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 800);
    eltwise_37_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 800);
    split_38_output0_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    split_38_output0_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    split_38_output1_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    split_38_output1_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    split_38_output2_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    split_38_output2_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    split_38_output3_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    split_38_output3_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    nl_43_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    nl_43_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    nl_42_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    nl_42_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    nl_40_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    nl_40_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    eltwise_41_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    eltwise_41_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    nl_39_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    nl_39_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    eltwise_44_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_44_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_45_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    eltwise_45_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    nl_46_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    nl_46_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_47_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    eltwise_47_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    gemm_48_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 800);
    gemm_48_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 800);
    gemm_49_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    gemm_49_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_50_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_50_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_51_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 768);
    eltwise_51_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 768);
    split_52_output0_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    split_52_output0_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    split_52_output1_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    split_52_output1_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    split_52_output2_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    split_52_output2_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    split_52_output3_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    split_52_output3_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    nl_57_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    nl_57_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    nl_56_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    nl_56_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    eltwise_58_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_58_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    nl_55_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    nl_55_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    nl_53_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    nl_53_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    eltwise_54_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    eltwise_54_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    eltwise_59_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 1280);
    eltwise_59_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 1280);
    nl_60_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    nl_60_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_61_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    eltwise_61_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    gemm_62_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    gemm_62_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    gemm_63_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 768);
    gemm_63_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 768);
    eltwise_64_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 768);
    eltwise_64_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 768);
    eltwise_65_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_65_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    split_66_output0_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    split_66_output0_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    split_66_output1_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    split_66_output1_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 640);
    split_66_output2_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 768);
    split_66_output2_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 768);
    split_66_output3_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 896);
    split_66_output3_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 896);
    nl_71_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    nl_71_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    nl_70_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    nl_70_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    nl_68_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    nl_68_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    eltwise_69_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    eltwise_69_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 384);
    nl_67_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    nl_67_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    eltwise_72_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    eltwise_72_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 512);
    eltwise_73_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_73_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    nl_74_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    nl_74_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 256);
    eltwise_75_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    eltwise_75_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 0);
    gemm_76_output_array.data = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    gemm_76_output_array.data_start = AI_PTR(g_model_lstm_keras_activations_map[0] + 128);
    return true;
  }
  AI_ERROR_TRAP(net_ctx, INIT_FAILED, NETWORK_ACTIVATIONS);
  return false;
}




/******************************************************************************/
AI_DECLARE_STATIC
ai_bool model_lstm_keras_configure_weights(
  ai_network* net_ctx, const ai_network_params* params)
{
  AI_ASSERT(net_ctx)

  if (ai_platform_get_weights_map(g_model_lstm_keras_weights_map, 1, params)) {
    /* Updating weights (byte) offsets */
    
    constantofshape_5_const_array.format |= AI_FMT_FLAG_CONST;
    constantofshape_5_const_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 0);
    constantofshape_5_const_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 0);
    gemm_6_weights_array.format |= AI_FMT_FLAG_CONST;
    gemm_6_weights_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 128);
    gemm_6_weights_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 128);
    gemm_7_weights_array.format |= AI_FMT_FLAG_CONST;
    gemm_7_weights_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 16512);
    gemm_7_weights_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 16512);
    eltwise_9_scale_array.format |= AI_FMT_FLAG_CONST;
    eltwise_9_scale_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 20608);
    eltwise_9_scale_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 20608);
    eltwise_9_bias_array.format |= AI_FMT_FLAG_CONST;
    eltwise_9_bias_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 21120);
    eltwise_9_bias_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 21120);
    split_10_num_or_size_splits_array.format |= AI_FMT_FLAG_CONST;
    split_10_num_or_size_splits_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 21632);
    split_10_num_or_size_splits_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 21632);
    eltwise_13_scale_array.format |= AI_FMT_FLAG_CONST;
    eltwise_13_scale_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 21636);
    eltwise_13_scale_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 21636);
    eltwise_13_bias_array.format |= AI_FMT_FLAG_CONST;
    eltwise_13_bias_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 21764);
    eltwise_13_bias_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 21764);
    split_24_num_or_size_splits_array.format |= AI_FMT_FLAG_CONST;
    split_24_num_or_size_splits_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 21892);
    split_24_num_or_size_splits_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 21892);
    split_38_num_or_size_splits_array.format |= AI_FMT_FLAG_CONST;
    split_38_num_or_size_splits_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 21896);
    split_38_num_or_size_splits_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 21896);
    split_52_num_or_size_splits_array.format |= AI_FMT_FLAG_CONST;
    split_52_num_or_size_splits_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 21900);
    split_52_num_or_size_splits_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 21900);
    split_66_num_or_size_splits_array.format |= AI_FMT_FLAG_CONST;
    split_66_num_or_size_splits_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 21904);
    split_66_num_or_size_splits_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 21904);
    gemm_76_weights_array.format |= AI_FMT_FLAG_CONST;
    gemm_76_weights_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 21908);
    gemm_76_weights_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 21908);
    gemm_76_bias_array.format |= AI_FMT_FLAG_CONST;
    gemm_76_bias_array.data = AI_PTR(g_model_lstm_keras_weights_map[0] + 22036);
    gemm_76_bias_array.data_start = AI_PTR(g_model_lstm_keras_weights_map[0] + 22036);
    return true;
  }
  AI_ERROR_TRAP(net_ctx, INIT_FAILED, NETWORK_WEIGHTS);
  return false;
}


/**  PUBLIC APIs SECTION  *****************************************************/



AI_DEPRECATED
AI_API_ENTRY
ai_bool ai_model_lstm_keras_get_info(
  ai_handle network, ai_network_report* report)
{
  ai_network* net_ctx = AI_NETWORK_ACQUIRE_CTX(network);

  if (report && net_ctx)
  {
    ai_network_report r = {
      .model_name        = AI_MODEL_LSTM_KERAS_MODEL_NAME,
      .model_signature   = AI_MODEL_LSTM_KERAS_MODEL_SIGNATURE,
      .model_datetime    = AI_TOOLS_DATE_TIME,
      
      .compile_datetime  = AI_TOOLS_COMPILE_TIME,
      
      .runtime_revision  = ai_platform_runtime_get_revision(),
      .runtime_version   = ai_platform_runtime_get_version(),

      .tool_revision     = AI_TOOLS_REVISION_ID,
      .tool_version      = {AI_TOOLS_VERSION_MAJOR, AI_TOOLS_VERSION_MINOR,
                            AI_TOOLS_VERSION_MICRO, 0x0},
      .tool_api_version  = AI_STRUCT_INIT,

      .api_version            = ai_platform_api_get_version(),
      .interface_api_version  = ai_platform_interface_api_get_version(),
      
      .n_macc            = 36245,
      .n_inputs          = 0,
      .inputs            = NULL,
      .n_outputs         = 0,
      .outputs           = NULL,
      .params            = AI_STRUCT_INIT,
      .activations       = AI_STRUCT_INIT,
      .n_nodes           = 0,
      .signature         = 0xd3ea447b,
    };

    if (!ai_platform_api_get_network_report(network, &r)) return false;

    *report = r;
    return true;
  }
  return false;
}



AI_API_ENTRY
ai_bool ai_model_lstm_keras_get_report(
  ai_handle network, ai_network_report* report)
{
  ai_network* net_ctx = AI_NETWORK_ACQUIRE_CTX(network);

  if (report && net_ctx)
  {
    ai_network_report r = {
      .model_name        = AI_MODEL_LSTM_KERAS_MODEL_NAME,
      .model_signature   = AI_MODEL_LSTM_KERAS_MODEL_SIGNATURE,
      .model_datetime    = AI_TOOLS_DATE_TIME,
      
      .compile_datetime  = AI_TOOLS_COMPILE_TIME,
      
      .runtime_revision  = ai_platform_runtime_get_revision(),
      .runtime_version   = ai_platform_runtime_get_version(),

      .tool_revision     = AI_TOOLS_REVISION_ID,
      .tool_version      = {AI_TOOLS_VERSION_MAJOR, AI_TOOLS_VERSION_MINOR,
                            AI_TOOLS_VERSION_MICRO, 0x0},
      .tool_api_version  = AI_STRUCT_INIT,

      .api_version            = ai_platform_api_get_version(),
      .interface_api_version  = ai_platform_interface_api_get_version(),
      
      .n_macc            = 36245,
      .n_inputs          = 0,
      .inputs            = NULL,
      .n_outputs         = 0,
      .outputs           = NULL,
      .map_signature     = AI_MAGIC_SIGNATURE,
      .map_weights       = AI_STRUCT_INIT,
      .map_activations   = AI_STRUCT_INIT,
      .n_nodes           = 0,
      .signature         = 0xd3ea447b,
    };

    if (!ai_platform_api_get_network_report(network, &r)) return false;

    *report = r;
    return true;
  }
  return false;
}


AI_API_ENTRY
ai_error ai_model_lstm_keras_get_error(ai_handle network)
{
  return ai_platform_network_get_error(network);
}


AI_API_ENTRY
ai_error ai_model_lstm_keras_create(
  ai_handle* network, const ai_buffer* network_config)
{
  return ai_platform_network_create(
    network, network_config, 
    AI_CONTEXT_OBJ(&AI_NET_OBJ_INSTANCE),
    AI_TOOLS_API_VERSION_MAJOR, AI_TOOLS_API_VERSION_MINOR, AI_TOOLS_API_VERSION_MICRO);
}


AI_API_ENTRY
ai_error ai_model_lstm_keras_create_and_init(
  ai_handle* network, const ai_handle activations[], const ai_handle weights[])
{
  ai_error err;
  ai_network_params params;

  err = ai_model_lstm_keras_create(network, AI_MODEL_LSTM_KERAS_DATA_CONFIG);
  if (err.type != AI_ERROR_NONE) {
    return err;
  }
  
  if (ai_model_lstm_keras_data_params_get(&params) != true) {
    err = ai_model_lstm_keras_get_error(*network);
    return err;
  }
#if defined(AI_MODEL_LSTM_KERAS_DATA_ACTIVATIONS_COUNT)
  /* set the addresses of the activations buffers */
  for (ai_u16 idx=0; activations && idx<params.map_activations.size; idx++) {
    AI_BUFFER_ARRAY_ITEM_SET_ADDRESS(&params.map_activations, idx, activations[idx]);
  }
#endif
#if defined(AI_MODEL_LSTM_KERAS_DATA_WEIGHTS_COUNT)
  /* set the addresses of the weight buffers */
  for (ai_u16 idx=0; weights && idx<params.map_weights.size; idx++) {
    AI_BUFFER_ARRAY_ITEM_SET_ADDRESS(&params.map_weights, idx, weights[idx]);
  }
#endif
  if (ai_model_lstm_keras_init(*network, &params) != true) {
    err = ai_model_lstm_keras_get_error(*network);
  }
  return err;
}


AI_API_ENTRY
ai_buffer* ai_model_lstm_keras_inputs_get(ai_handle network, ai_u16 *n_buffer)
{
  if (network == AI_HANDLE_NULL) {
    network = (ai_handle)&AI_NET_OBJ_INSTANCE;
    AI_NETWORK_OBJ(network)->magic = AI_MAGIC_CONTEXT_TOKEN;
  }
  return ai_platform_inputs_get(network, n_buffer);
}


AI_API_ENTRY
ai_buffer* ai_model_lstm_keras_outputs_get(ai_handle network, ai_u16 *n_buffer)
{
  if (network == AI_HANDLE_NULL) {
    network = (ai_handle)&AI_NET_OBJ_INSTANCE;
    AI_NETWORK_OBJ(network)->magic = AI_MAGIC_CONTEXT_TOKEN;
  }
  return ai_platform_outputs_get(network, n_buffer);
}


AI_API_ENTRY
ai_handle ai_model_lstm_keras_destroy(ai_handle network)
{
  return ai_platform_network_destroy(network);
}


AI_API_ENTRY
ai_bool ai_model_lstm_keras_init(
  ai_handle network, const ai_network_params* params)
{
  ai_network* net_ctx = AI_NETWORK_OBJ(ai_platform_network_init(network, params));
  ai_bool ok = true;

  if (!net_ctx) return false;
  ok &= model_lstm_keras_configure_weights(net_ctx, params);
  ok &= model_lstm_keras_configure_activations(net_ctx, params);

  ok &= ai_platform_network_post_init(network);

  return ok;
}


AI_API_ENTRY
ai_i32 ai_model_lstm_keras_run(
  ai_handle network, const ai_buffer* input, ai_buffer* output)
{
  return ai_platform_network_process(network, input, output);
}


AI_API_ENTRY
ai_i32 ai_model_lstm_keras_forward(ai_handle network, const ai_buffer* input)
{
  return ai_platform_network_process(network, input, NULL);
}



#undef AI_MODEL_LSTM_KERAS_MODEL_SIGNATURE
#undef AI_NET_OBJ_INSTANCE
#undef AI_TOOLS_DATE_TIME
#undef AI_TOOLS_COMPILE_TIME


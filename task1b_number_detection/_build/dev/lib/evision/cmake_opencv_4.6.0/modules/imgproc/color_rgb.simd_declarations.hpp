#define CV_CPU_SIMD_FILENAME "/home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/deps/evision/3rd_party/opencv/opencv-4.6.0/modules/imgproc/src/color_rgb.simd.hpp"
#define CV_CPU_DISPATCH_MODE SSE4_1
#include "opencv2/core/private/cv_cpu_include_simd_declarations.hpp"

#define CV_CPU_DISPATCH_MODE AVX2
#include "opencv2/core/private/cv_cpu_include_simd_declarations.hpp"

#define CV_CPU_DISPATCH_MODES_ALL AVX2, SSE4_1, BASELINE

#undef CV_CPU_SIMD_FILENAME

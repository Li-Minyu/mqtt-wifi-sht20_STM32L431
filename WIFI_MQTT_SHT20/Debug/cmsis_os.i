# 1 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
# 1 "E:/project/other project/WIFI_MQTT_SHT20/Debug//"
# 1 "<built-in>"
#define __STDC__ 1
#define __STDC_VERSION__ 201112L
#define __STDC_UTF_16__ 1
#define __STDC_UTF_32__ 1
#define __STDC_HOSTED__ 1
#define __GNUC__ 10
#define __GNUC_MINOR__ 3
#define __GNUC_PATCHLEVEL__ 1
#define __VERSION__ "10.3.1 20210824 (release)"
#define __ATOMIC_RELAXED 0
#define __ATOMIC_SEQ_CST 5
#define __ATOMIC_ACQUIRE 2
#define __ATOMIC_RELEASE 3
#define __ATOMIC_ACQ_REL 4
#define __ATOMIC_CONSUME 1
#define __FINITE_MATH_ONLY__ 0
#define __SIZEOF_INT__ 4
#define __SIZEOF_LONG__ 4
#define __SIZEOF_LONG_LONG__ 8
#define __SIZEOF_SHORT__ 2
#define __SIZEOF_FLOAT__ 4
#define __SIZEOF_DOUBLE__ 8
#define __SIZEOF_LONG_DOUBLE__ 8
#define __SIZEOF_SIZE_T__ 4
#define __CHAR_BIT__ 8
#define __BIGGEST_ALIGNMENT__ 8
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_PDP_ENDIAN__ 3412
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __SIZEOF_POINTER__ 4
#define __SIZE_TYPE__ unsigned int
#define __PTRDIFF_TYPE__ int
#define __WCHAR_TYPE__ unsigned int
#define __WINT_TYPE__ unsigned int
#define __INTMAX_TYPE__ long long int
#define __UINTMAX_TYPE__ long long unsigned int
#define __CHAR16_TYPE__ short unsigned int
#define __CHAR32_TYPE__ long unsigned int
#define __SIG_ATOMIC_TYPE__ int
#define __INT8_TYPE__ signed char
#define __INT16_TYPE__ short int
#define __INT32_TYPE__ long int
#define __INT64_TYPE__ long long int
#define __UINT8_TYPE__ unsigned char
#define __UINT16_TYPE__ short unsigned int
#define __UINT32_TYPE__ long unsigned int
#define __UINT64_TYPE__ long long unsigned int
#define __INT_LEAST8_TYPE__ signed char
#define __INT_LEAST16_TYPE__ short int
#define __INT_LEAST32_TYPE__ long int
#define __INT_LEAST64_TYPE__ long long int
#define __UINT_LEAST8_TYPE__ unsigned char
#define __UINT_LEAST16_TYPE__ short unsigned int
#define __UINT_LEAST32_TYPE__ long unsigned int
#define __UINT_LEAST64_TYPE__ long long unsigned int
#define __INT_FAST8_TYPE__ int
#define __INT_FAST16_TYPE__ int
#define __INT_FAST32_TYPE__ int
#define __INT_FAST64_TYPE__ long long int
#define __UINT_FAST8_TYPE__ unsigned int
#define __UINT_FAST16_TYPE__ unsigned int
#define __UINT_FAST32_TYPE__ unsigned int
#define __UINT_FAST64_TYPE__ long long unsigned int
#define __INTPTR_TYPE__ int
#define __UINTPTR_TYPE__ unsigned int
#define __GXX_ABI_VERSION 1014
#define __SCHAR_MAX__ 0x7f
#define __SHRT_MAX__ 0x7fff
#define __INT_MAX__ 0x7fffffff
#define __LONG_MAX__ 0x7fffffffL
#define __LONG_LONG_MAX__ 0x7fffffffffffffffLL
#define __WCHAR_MAX__ 0xffffffffU
#define __WCHAR_MIN__ 0U
#define __WINT_MAX__ 0xffffffffU
#define __WINT_MIN__ 0U
#define __PTRDIFF_MAX__ 0x7fffffff
#define __SIZE_MAX__ 0xffffffffU
#define __SCHAR_WIDTH__ 8
#define __SHRT_WIDTH__ 16
#define __INT_WIDTH__ 32
#define __LONG_WIDTH__ 32
#define __LONG_LONG_WIDTH__ 64
#define __WCHAR_WIDTH__ 32
#define __WINT_WIDTH__ 32
#define __PTRDIFF_WIDTH__ 32
#define __SIZE_WIDTH__ 32
#define __INTMAX_MAX__ 0x7fffffffffffffffLL
#define __INTMAX_C(c) c ## LL
#define __UINTMAX_MAX__ 0xffffffffffffffffULL
#define __UINTMAX_C(c) c ## ULL
#define __INTMAX_WIDTH__ 64
#define __SIG_ATOMIC_MAX__ 0x7fffffff
#define __SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)
#define __SIG_ATOMIC_WIDTH__ 32
#define __INT8_MAX__ 0x7f
#define __INT16_MAX__ 0x7fff
#define __INT32_MAX__ 0x7fffffffL
#define __INT64_MAX__ 0x7fffffffffffffffLL
#define __UINT8_MAX__ 0xff
#define __UINT16_MAX__ 0xffff
#define __UINT32_MAX__ 0xffffffffUL
#define __UINT64_MAX__ 0xffffffffffffffffULL
#define __INT_LEAST8_MAX__ 0x7f
#define __INT8_C(c) c
#define __INT_LEAST8_WIDTH__ 8
#define __INT_LEAST16_MAX__ 0x7fff
#define __INT16_C(c) c
#define __INT_LEAST16_WIDTH__ 16
#define __INT_LEAST32_MAX__ 0x7fffffffL
#define __INT32_C(c) c ## L
#define __INT_LEAST32_WIDTH__ 32
#define __INT_LEAST64_MAX__ 0x7fffffffffffffffLL
#define __INT64_C(c) c ## LL
#define __INT_LEAST64_WIDTH__ 64
#define __UINT_LEAST8_MAX__ 0xff
#define __UINT8_C(c) c
#define __UINT_LEAST16_MAX__ 0xffff
#define __UINT16_C(c) c
#define __UINT_LEAST32_MAX__ 0xffffffffUL
#define __UINT32_C(c) c ## UL
#define __UINT_LEAST64_MAX__ 0xffffffffffffffffULL
#define __UINT64_C(c) c ## ULL
#define __INT_FAST8_MAX__ 0x7fffffff
#define __INT_FAST8_WIDTH__ 32
#define __INT_FAST16_MAX__ 0x7fffffff
#define __INT_FAST16_WIDTH__ 32
#define __INT_FAST32_MAX__ 0x7fffffff
#define __INT_FAST32_WIDTH__ 32
#define __INT_FAST64_MAX__ 0x7fffffffffffffffLL
#define __INT_FAST64_WIDTH__ 64
#define __UINT_FAST8_MAX__ 0xffffffffU
#define __UINT_FAST16_MAX__ 0xffffffffU
#define __UINT_FAST32_MAX__ 0xffffffffU
#define __UINT_FAST64_MAX__ 0xffffffffffffffffULL
#define __INTPTR_MAX__ 0x7fffffff
#define __INTPTR_WIDTH__ 32
#define __UINTPTR_MAX__ 0xffffffffU
#define __GCC_IEC_559 0
#define __GCC_IEC_559_COMPLEX 0
#define __FLT_EVAL_METHOD__ 0
#define __FLT_EVAL_METHOD_TS_18661_3__ 0
#define __DEC_EVAL_METHOD__ 2
#define __FLT_RADIX__ 2
#define __FLT_MANT_DIG__ 24
#define __FLT_DIG__ 6
#define __FLT_MIN_EXP__ (-125)
#define __FLT_MIN_10_EXP__ (-37)
#define __FLT_MAX_EXP__ 128
#define __FLT_MAX_10_EXP__ 38
#define __FLT_DECIMAL_DIG__ 9
#define __FLT_MAX__ 3.4028234663852886e+38F
#define __FLT_NORM_MAX__ 3.4028234663852886e+38F
#define __FLT_MIN__ 1.1754943508222875e-38F
#define __FLT_EPSILON__ 1.1920928955078125e-7F
#define __FLT_DENORM_MIN__ 1.4012984643248171e-45F
#define __FLT_HAS_DENORM__ 1
#define __FLT_HAS_INFINITY__ 1
#define __FLT_HAS_QUIET_NAN__ 1
#define __FP_FAST_FMAF 1
#define __DBL_MANT_DIG__ 53
#define __DBL_DIG__ 15
#define __DBL_MIN_EXP__ (-1021)
#define __DBL_MIN_10_EXP__ (-307)
#define __DBL_MAX_EXP__ 1024
#define __DBL_MAX_10_EXP__ 308
#define __DBL_DECIMAL_DIG__ 17
#define __DBL_MAX__ ((double)1.7976931348623157e+308L)
#define __DBL_NORM_MAX__ ((double)1.7976931348623157e+308L)
#define __DBL_MIN__ ((double)2.2250738585072014e-308L)
#define __DBL_EPSILON__ ((double)2.2204460492503131e-16L)
#define __DBL_DENORM_MIN__ ((double)4.9406564584124654e-324L)
#define __DBL_HAS_DENORM__ 1
#define __DBL_HAS_INFINITY__ 1
#define __DBL_HAS_QUIET_NAN__ 1
#define __LDBL_MANT_DIG__ 53
#define __LDBL_DIG__ 15
#define __LDBL_MIN_EXP__ (-1021)
#define __LDBL_MIN_10_EXP__ (-307)
#define __LDBL_MAX_EXP__ 1024
#define __LDBL_MAX_10_EXP__ 308
#define __DECIMAL_DIG__ 17
#define __LDBL_DECIMAL_DIG__ 17
#define __LDBL_MAX__ 1.7976931348623157e+308L
#define __LDBL_NORM_MAX__ 1.7976931348623157e+308L
#define __LDBL_MIN__ 2.2250738585072014e-308L
#define __LDBL_EPSILON__ 2.2204460492503131e-16L
#define __LDBL_DENORM_MIN__ 4.9406564584124654e-324L
#define __LDBL_HAS_DENORM__ 1
#define __LDBL_HAS_INFINITY__ 1
#define __LDBL_HAS_QUIET_NAN__ 1
#define __FLT32_MANT_DIG__ 24
#define __FLT32_DIG__ 6
#define __FLT32_MIN_EXP__ (-125)
#define __FLT32_MIN_10_EXP__ (-37)
#define __FLT32_MAX_EXP__ 128
#define __FLT32_MAX_10_EXP__ 38
#define __FLT32_DECIMAL_DIG__ 9
#define __FLT32_MAX__ 3.4028234663852886e+38F32
#define __FLT32_NORM_MAX__ 3.4028234663852886e+38F32
#define __FLT32_MIN__ 1.1754943508222875e-38F32
#define __FLT32_EPSILON__ 1.1920928955078125e-7F32
#define __FLT32_DENORM_MIN__ 1.4012984643248171e-45F32
#define __FLT32_HAS_DENORM__ 1
#define __FLT32_HAS_INFINITY__ 1
#define __FLT32_HAS_QUIET_NAN__ 1
#define __FP_FAST_FMAF32 1
#define __FLT64_MANT_DIG__ 53
#define __FLT64_DIG__ 15
#define __FLT64_MIN_EXP__ (-1021)
#define __FLT64_MIN_10_EXP__ (-307)
#define __FLT64_MAX_EXP__ 1024
#define __FLT64_MAX_10_EXP__ 308
#define __FLT64_DECIMAL_DIG__ 17
#define __FLT64_MAX__ 1.7976931348623157e+308F64
#define __FLT64_NORM_MAX__ 1.7976931348623157e+308F64
#define __FLT64_MIN__ 2.2250738585072014e-308F64
#define __FLT64_EPSILON__ 2.2204460492503131e-16F64
#define __FLT64_DENORM_MIN__ 4.9406564584124654e-324F64
#define __FLT64_HAS_DENORM__ 1
#define __FLT64_HAS_INFINITY__ 1
#define __FLT64_HAS_QUIET_NAN__ 1
#define __FLT32X_MANT_DIG__ 53
#define __FLT32X_DIG__ 15
#define __FLT32X_MIN_EXP__ (-1021)
#define __FLT32X_MIN_10_EXP__ (-307)
#define __FLT32X_MAX_EXP__ 1024
#define __FLT32X_MAX_10_EXP__ 308
#define __FLT32X_DECIMAL_DIG__ 17
#define __FLT32X_MAX__ 1.7976931348623157e+308F32x
#define __FLT32X_NORM_MAX__ 1.7976931348623157e+308F32x
#define __FLT32X_MIN__ 2.2250738585072014e-308F32x
#define __FLT32X_EPSILON__ 2.2204460492503131e-16F32x
#define __FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x
#define __FLT32X_HAS_DENORM__ 1
#define __FLT32X_HAS_INFINITY__ 1
#define __FLT32X_HAS_QUIET_NAN__ 1
#define __SFRACT_FBIT__ 7
#define __SFRACT_IBIT__ 0
#define __SFRACT_MIN__ (-0.5HR-0.5HR)
#define __SFRACT_MAX__ 0X7FP-7HR
#define __SFRACT_EPSILON__ 0x1P-7HR
#define __USFRACT_FBIT__ 8
#define __USFRACT_IBIT__ 0
#define __USFRACT_MIN__ 0.0UHR
#define __USFRACT_MAX__ 0XFFP-8UHR
#define __USFRACT_EPSILON__ 0x1P-8UHR
#define __FRACT_FBIT__ 15
#define __FRACT_IBIT__ 0
#define __FRACT_MIN__ (-0.5R-0.5R)
#define __FRACT_MAX__ 0X7FFFP-15R
#define __FRACT_EPSILON__ 0x1P-15R
#define __UFRACT_FBIT__ 16
#define __UFRACT_IBIT__ 0
#define __UFRACT_MIN__ 0.0UR
#define __UFRACT_MAX__ 0XFFFFP-16UR
#define __UFRACT_EPSILON__ 0x1P-16UR
#define __LFRACT_FBIT__ 31
#define __LFRACT_IBIT__ 0
#define __LFRACT_MIN__ (-0.5LR-0.5LR)
#define __LFRACT_MAX__ 0X7FFFFFFFP-31LR
#define __LFRACT_EPSILON__ 0x1P-31LR
#define __ULFRACT_FBIT__ 32
#define __ULFRACT_IBIT__ 0
#define __ULFRACT_MIN__ 0.0ULR
#define __ULFRACT_MAX__ 0XFFFFFFFFP-32ULR
#define __ULFRACT_EPSILON__ 0x1P-32ULR
#define __LLFRACT_FBIT__ 63
#define __LLFRACT_IBIT__ 0
#define __LLFRACT_MIN__ (-0.5LLR-0.5LLR)
#define __LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR
#define __LLFRACT_EPSILON__ 0x1P-63LLR
#define __ULLFRACT_FBIT__ 64
#define __ULLFRACT_IBIT__ 0
#define __ULLFRACT_MIN__ 0.0ULLR
#define __ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR
#define __ULLFRACT_EPSILON__ 0x1P-64ULLR
#define __SACCUM_FBIT__ 7
#define __SACCUM_IBIT__ 8
#define __SACCUM_MIN__ (-0X1P7HK-0X1P7HK)
#define __SACCUM_MAX__ 0X7FFFP-7HK
#define __SACCUM_EPSILON__ 0x1P-7HK
#define __USACCUM_FBIT__ 8
#define __USACCUM_IBIT__ 8
#define __USACCUM_MIN__ 0.0UHK
#define __USACCUM_MAX__ 0XFFFFP-8UHK
#define __USACCUM_EPSILON__ 0x1P-8UHK
#define __ACCUM_FBIT__ 15
#define __ACCUM_IBIT__ 16
#define __ACCUM_MIN__ (-0X1P15K-0X1P15K)
#define __ACCUM_MAX__ 0X7FFFFFFFP-15K
#define __ACCUM_EPSILON__ 0x1P-15K
#define __UACCUM_FBIT__ 16
#define __UACCUM_IBIT__ 16
#define __UACCUM_MIN__ 0.0UK
#define __UACCUM_MAX__ 0XFFFFFFFFP-16UK
#define __UACCUM_EPSILON__ 0x1P-16UK
#define __LACCUM_FBIT__ 31
#define __LACCUM_IBIT__ 32
#define __LACCUM_MIN__ (-0X1P31LK-0X1P31LK)
#define __LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK
#define __LACCUM_EPSILON__ 0x1P-31LK
#define __ULACCUM_FBIT__ 32
#define __ULACCUM_IBIT__ 32
#define __ULACCUM_MIN__ 0.0ULK
#define __ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK
#define __ULACCUM_EPSILON__ 0x1P-32ULK
#define __LLACCUM_FBIT__ 31
#define __LLACCUM_IBIT__ 32
#define __LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)
#define __LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK
#define __LLACCUM_EPSILON__ 0x1P-31LLK
#define __ULLACCUM_FBIT__ 32
#define __ULLACCUM_IBIT__ 32
#define __ULLACCUM_MIN__ 0.0ULLK
#define __ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK
#define __ULLACCUM_EPSILON__ 0x1P-32ULLK
#define __QQ_FBIT__ 7
#define __QQ_IBIT__ 0
#define __HQ_FBIT__ 15
#define __HQ_IBIT__ 0
#define __SQ_FBIT__ 31
#define __SQ_IBIT__ 0
#define __DQ_FBIT__ 63
#define __DQ_IBIT__ 0
#define __TQ_FBIT__ 127
#define __TQ_IBIT__ 0
#define __UQQ_FBIT__ 8
#define __UQQ_IBIT__ 0
#define __UHQ_FBIT__ 16
#define __UHQ_IBIT__ 0
#define __USQ_FBIT__ 32
#define __USQ_IBIT__ 0
#define __UDQ_FBIT__ 64
#define __UDQ_IBIT__ 0
#define __UTQ_FBIT__ 128
#define __UTQ_IBIT__ 0
#define __HA_FBIT__ 7
#define __HA_IBIT__ 8
#define __SA_FBIT__ 15
#define __SA_IBIT__ 16
#define __DA_FBIT__ 31
#define __DA_IBIT__ 32
#define __TA_FBIT__ 63
#define __TA_IBIT__ 64
#define __UHA_FBIT__ 8
#define __UHA_IBIT__ 8
#define __USA_FBIT__ 16
#define __USA_IBIT__ 16
#define __UDA_FBIT__ 32
#define __UDA_IBIT__ 32
#define __UTA_FBIT__ 64
#define __UTA_IBIT__ 64
#define __REGISTER_PREFIX__ 
#define __USER_LABEL_PREFIX__ 
#define __GNUC_STDC_INLINE__ 1
#define __NO_INLINE__ 1
#define __CHAR_UNSIGNED__ 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1
#define __GCC_ATOMIC_BOOL_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR16_T_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR32_T_LOCK_FREE 2
#define __GCC_ATOMIC_WCHAR_T_LOCK_FREE 2
#define __GCC_ATOMIC_SHORT_LOCK_FREE 2
#define __GCC_ATOMIC_INT_LOCK_FREE 2
#define __GCC_ATOMIC_LONG_LOCK_FREE 2
#define __GCC_ATOMIC_LLONG_LOCK_FREE 1
#define __GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1
#define __GCC_ATOMIC_POINTER_LOCK_FREE 2
#define __HAVE_SPECULATION_SAFE_VALUE 1
#define __GCC_HAVE_DWARF2_CFI_ASM 1
#define __PRAGMA_REDEFINE_EXTNAME 1
#define __SIZEOF_WCHAR_T__ 4
#define __SIZEOF_WINT_T__ 4
#define __SIZEOF_PTRDIFF_T__ 4
#define __ARM_FEATURE_DSP 1
#define __ARM_FEATURE_QBIT 1
#define __ARM_FEATURE_SAT 1
#undef __ARM_FEATURE_CRYPTO
# 1 "<built-in>"
#define __ARM_FEATURE_UNALIGNED 1
#undef __ARM_FEATURE_QRDMX
# 1 "<built-in>"
#undef __ARM_FEATURE_CRC32
# 1 "<built-in>"
#undef __ARM_FEATURE_DOTPROD
# 1 "<built-in>"
#undef __ARM_FEATURE_COMPLEX
# 1 "<built-in>"
#define __ARM_32BIT_STATE 1
#undef __ARM_FEATURE_MVE
# 1 "<built-in>"
#undef __ARM_FEATURE_CMSE
# 1 "<built-in>"
#undef __ARM_FEATURE_LDREX
# 1 "<built-in>"
#define __ARM_FEATURE_LDREX 7
#define __ARM_FEATURE_CLZ 1
#undef __ARM_FEATURE_NUMERIC_MAXMIN
# 1 "<built-in>"
#define __ARM_FEATURE_SIMD32 1
#define __ARM_SIZEOF_MINIMAL_ENUM 1
#define __ARM_SIZEOF_WCHAR_T 4
#undef __ARM_ARCH_PROFILE
# 1 "<built-in>"
#define __ARM_ARCH_PROFILE 77
#define __arm__ 1
#undef __ARM_ARCH
# 1 "<built-in>"
#define __ARM_ARCH 7
#define __APCS_32__ 1
#define __GCC_ASM_FLAG_OUTPUTS__ 1
#define __thumb__ 1
#define __thumb2__ 1
#define __THUMBEL__ 1
#undef __ARM_ARCH_ISA_THUMB
# 1 "<built-in>"
#define __ARM_ARCH_ISA_THUMB 2
#define __ARMEL__ 1
#define __VFP_FP__ 1
#undef __ARM_FP
# 1 "<built-in>"
#define __ARM_FP 4
#undef __ARM_FP16_FORMAT_IEEE
# 1 "<built-in>"
#undef __ARM_FP16_FORMAT_ALTERNATIVE
# 1 "<built-in>"
#undef __ARM_FP16_ARGS
# 1 "<built-in>"
#undef __ARM_FEATURE_FP16_SCALAR_ARITHMETIC
# 1 "<built-in>"
#undef __ARM_FEATURE_FP16_VECTOR_ARITHMETIC
# 1 "<built-in>"
#undef __ARM_FEATURE_FP16_FML
# 1 "<built-in>"
#define __ARM_FEATURE_FMA 1
#undef __ARM_NEON__
# 1 "<built-in>"
#undef __ARM_NEON
# 1 "<built-in>"
#undef __ARM_NEON_FP
# 1 "<built-in>"
#define __THUMB_INTERWORK__ 1
#define __ARM_ARCH_7EM__ 1
#define __ARM_PCS_VFP 1
#define __ARM_EABI__ 1
#undef __FDPIC__
# 1 "<built-in>"
#define __ARM_ARCH_EXT_IDIV__ 1
#define __ARM_FEATURE_IDIV 1
#define __ARM_ASM_SYNTAX_UNIFIED__ 1
#undef __ARM_FEATURE_COPROC
# 1 "<built-in>"
#define __ARM_FEATURE_COPROC 15
#undef __ARM_FEATURE_CDE
# 1 "<built-in>"
#undef __ARM_FEATURE_CDE_COPROC
# 1 "<built-in>"
#undef __ARM_FEATURE_MATMUL_INT8
# 1 "<built-in>"
#undef __ARM_FEATURE_BF16_SCALAR_ARITHMETIC
# 1 "<built-in>"
#undef __ARM_FEATURE_BF16_VECTOR_ARITHMETIC
# 1 "<built-in>"
#undef __ARM_BF16_FORMAT_ALTERNATIVE
# 1 "<built-in>"
#define __GXX_TYPEINFO_EQUALITY_INLINE 0
#define __ELF__ 1
# 1 "<command-line>"
#define __USES_INITFINI__ 1
#define DEBUG 1
#define USE_HAL_DRIVER 1
#define STM32L431xx 1
# 1 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
# 56 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\string.h" 1 3







#define _STRING_H_ 

# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\_ansi.h" 1 3







#define _ANSIDECL_H_ 

# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\newlib-nano\\newlib.h" 1 3 4







#define __NEWLIB_H__ 1





# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\_newlib_version.h" 1 3 4



#define _NEWLIB_VERSION_H__ 1

#define _NEWLIB_VERSION "4.1.0"
#define __NEWLIB__ 4
#define __NEWLIB_MINOR__ 1
#define __NEWLIB_PATCHLEVEL__ 0
# 15 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\newlib-nano\\newlib.h" 2 3 4
# 34 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\newlib-nano\\newlib.h" 3 4
#define _WANT_REENT_SMALL 1


#define _REENT_CHECK_VERIFY 1





#define _MB_LEN_MAX 1
# 53 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\newlib-nano\\newlib.h" 3 4
#define HAVE_INITFINI_ARRAY 1



#define _ATEXIT_DYNAMIC_ALLOC 1


#define _HAVE_LONG_DOUBLE 1


#define _HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1


#define _LDBL_EQ_DBL 1
# 81 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\newlib-nano\\newlib.h" 3 4
#define _LITE_EXIT 1


#define _REENT_GLOBAL_ATEXIT 1







#define _NANO_FORMATTED_IO 1


#define _RETARGETABLE_LOCKING 1
# 11 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\_ansi.h" 2 3
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\config.h" 1 3

#define __SYS_CONFIG_H__ 

# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\ieeefp.h" 1 3
# 77 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\ieeefp.h" 3
#define __IEEE_LITTLE_ENDIAN 
# 91 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\ieeefp.h" 3
#define _SUPPORTS_ERREXCEPT 
# 496 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\ieeefp.h" 3
#define __OBSOLETE_MATH_DEFAULT 1


#define __OBSOLETE_MATH __OBSOLETE_MATH_DEFAULT
# 5 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\config.h" 2 3
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\features.h" 1 3
# 22 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\features.h" 3
#define _SYS_FEATURES_H 
# 33 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\features.h" 3
#define __GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))






#define __GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)
# 131 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\features.h" 3
#undef _DEFAULT_SOURCE
#define _DEFAULT_SOURCE 1



#undef _POSIX_SOURCE
#define _POSIX_SOURCE 1
#undef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 200809L
# 158 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\features.h" 3
#undef _ATFILE_SOURCE
#define _ATFILE_SOURCE 1
# 247 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\features.h" 3
#define __ATFILE_VISIBLE 1





#define __BSD_VISIBLE 1







#define __GNU_VISIBLE 0




#define __ISO_C_VISIBLE 2011
# 277 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\features.h" 3
#define __LARGEFILE_VISIBLE 0



#define __MISC_VISIBLE 1





#define __POSIX_VISIBLE 200809
# 303 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\features.h" 3
#define __SVID_VISIBLE 1
# 319 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\features.h" 3
#define __XSI_VISIBLE 0
# 330 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\features.h" 3
#define __SSP_FORTIFY_LEVEL 0
# 6 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\config.h" 2 3
# 224 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\config.h" 3
#define _POINTER_INT long





#undef __RAND_MAX



#define __RAND_MAX 0x7fffffff
# 250 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\config.h" 3
#define __EXPORT 



#define __IMPORT 






#define _READ_WRITE_RETURN_TYPE int





#define _READ_WRITE_BUFSIZE_TYPE int
# 280 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\config.h" 3
#define _REENT_SMALL 
# 12 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\_ansi.h" 2 3
# 31 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\_ansi.h" 3
#define _BEGIN_STD_C 
#define _END_STD_C 
#define _NOTHROW 



#define _LONG_DOUBLE long double





#define _ATTRIBUTE(attrs) __attribute__ (attrs)
# 69 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\_ansi.h" 3
#define _ELIDABLE_INLINE static __inline__



#define _NOINLINE __attribute__ ((__noinline__))
#define _NOINLINE_STATIC _NOINLINE static
# 11 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\string.h" 2 3
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 1 3
# 11 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _SYS_REENT_H_ 

# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\_ansi.h" 1 3
# 14 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 2 3
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 1 3 4
# 39 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#define _STDDEF_H 
#define _STDDEF_H_ 

#define _ANSI_STDDEF_H 
# 131 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#define _PTRDIFF_T 
#define _T_PTRDIFF_ 
#define _T_PTRDIFF 
#define __PTRDIFF_T 
#define _PTRDIFF_T_ 
#define _BSD_PTRDIFF_T_ 
#define ___int_ptrdiff_t_h 
#define _GCC_PTRDIFF_T 
#define _PTRDIFF_T_DECLARED 




# 143 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 155 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef __need_ptrdiff_t
# 181 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#define __size_t__ 
#define __SIZE_T__ 
#define _SIZE_T 
#define _SYS_SIZE_T_H 
#define _T_SIZE_ 
#define _T_SIZE 
#define __SIZE_T 
#define _SIZE_T_ 
#define _BSD_SIZE_T_ 
#define _SIZE_T_DEFINED_ 
#define _SIZE_T_DEFINED 
#define _BSD_SIZE_T_DEFINED_ 
#define _SIZE_T_DECLARED 
#define ___int_size_t_h 
#define _GCC_SIZE_T 
#define _SIZET_ 






#define __size_t 





typedef unsigned int size_t;
# 231 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef __need_size_t
# 260 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#define __wchar_t__ 
#define __WCHAR_T__ 
#define _WCHAR_T 
#define _T_WCHAR_ 
#define _T_WCHAR 
#define __WCHAR_T 
#define _WCHAR_T_ 
#define _BSD_WCHAR_T_ 
#define _WCHAR_T_DEFINED_ 
#define _WCHAR_T_DEFINED 
#define _WCHAR_T_H 
#define ___int_wchar_t_h 
#define __INT_WCHAR_T_H 
#define _GCC_WCHAR_T 
#define _WCHAR_T_DECLARED 
# 287 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef _BSD_WCHAR_T_
# 321 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
typedef unsigned int wchar_t;
# 340 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef __need_wchar_t
# 390 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)




#define _GCC_MAX_ALIGN_T 



typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 426 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
} max_align_t;
# 15 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 2 3
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_types.h" 1 3
# 20 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_types.h" 3
#define _SYS__TYPES_H 

#define __need_size_t 
#define __need_wint_t 
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 1 3 4
# 155 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef __need_ptrdiff_t
# 231 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef __need_size_t
# 340 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef __need_wchar_t




#define _WINT_T 




typedef unsigned int wint_t;

#undef __need_wint_t
# 390 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 25 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_types.h" 2 3


# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_types.h" 1 3





#define _MACHINE__TYPES_H 
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_default_types.h" 1 3





#define _MACHINE__DEFAULT_TYPES_H 
# 15 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_default_types.h" 3
#define __EXP(x) __ ##x ##__
# 26 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_default_types.h" 3
#define __have_longlong64 1






#define __have_long32 1







typedef signed char __int8_t;

typedef unsigned char __uint8_t;



#define ___int8_t_defined 1







typedef short int __int16_t;

typedef short unsigned int __uint16_t;



#define ___int16_t_defined 1
# 77 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;



#define ___int32_t_defined 1
# 103 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;



#define ___int64_t_defined 1
# 134 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;



#define ___int_least8_t_defined 1
# 160 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;



#define ___int_least16_t_defined 1
# 182 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;



#define ___int_least32_t_defined 1
# 200 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;



#define ___int_least64_t_defined 1







typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 244 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_default_types.h" 3
#undef __EXP
# 8 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_types.h" 2 3
# 28 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 127 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_types.h" 3
#undef __size_t



typedef unsigned int __size_t;
# 146 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_types.h" 3
#define unsigned signed
typedef signed int _ssize_t;
#undef unsigned
# 158 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;



#define _CLOCK_T_ unsigned long


typedef unsigned long __clock_t;




#define _TIME_T_ __int_least64_t

typedef __int_least64_t __time_t;


#define _CLOCKID_T_ unsigned long


typedef unsigned long __clockid_t;

#define _TIMER_T_ unsigned long
typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 16 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 2 3

#define _NULL 0



#define __Long long
typedef unsigned long __ULong;
# 34 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\lock.h" 1 3

#define __SYS_LOCK_H__ 
# 33 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\lock.h" 3
struct __lock;
typedef struct __lock * _LOCK_T;
#define _LOCK_RECURSIVE_T _LOCK_T

#define __LOCK_INIT(class,lock) extern struct __lock __lock_ ## lock; class _LOCK_T lock = &__lock_ ## lock

#define __LOCK_INIT_RECURSIVE(class,lock) __LOCK_INIT(class,lock)

extern void __retarget_lock_init(_LOCK_T *lock);
#define __lock_init(lock) __retarget_lock_init(&lock)
extern void __retarget_lock_init_recursive(_LOCK_T *lock);
#define __lock_init_recursive(lock) __retarget_lock_init_recursive(&lock)
extern void __retarget_lock_close(_LOCK_T lock);
#define __lock_close(lock) __retarget_lock_close(lock)
extern void __retarget_lock_close_recursive(_LOCK_T lock);
#define __lock_close_recursive(lock) __retarget_lock_close_recursive(lock)
extern void __retarget_lock_acquire(_LOCK_T lock);
#define __lock_acquire(lock) __retarget_lock_acquire(lock)
extern void __retarget_lock_acquire_recursive(_LOCK_T lock);
#define __lock_acquire_recursive(lock) __retarget_lock_acquire_recursive(lock)
extern int __retarget_lock_try_acquire(_LOCK_T lock);
#define __lock_try_acquire(lock) __retarget_lock_try_acquire(lock)
extern int __retarget_lock_try_acquire_recursive(_LOCK_T lock);
#define __lock_try_acquire_recursive(lock) __retarget_lock_try_acquire_recursive(lock)

extern void __retarget_lock_release(_LOCK_T lock);
#define __lock_release(lock) __retarget_lock_release(lock)
extern void __retarget_lock_release_recursive(_LOCK_T lock);
#define __lock_release_recursive(lock) __retarget_lock_release_recursive(lock)
# 35 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 2 3
typedef _LOCK_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};





#define _ATEXIT_SIZE 32

struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};


struct _atexit {
 struct _atexit *_next;
 int _ind;
 void (*_fns[32])(void);
        struct _on_exit_args * _on_exit_args_ptr;
};
#define _ATEXIT_INIT {_NULL, 0, {_NULL}, _NULL}
# 109 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _REENT_INIT_ATEXIT 
# 122 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 158 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
struct __sFILE_fake {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;

  struct _reent *_data;
};




extern void __sinit (struct _reent *);

#define _REENT_SMALL_CHECK_INIT(ptr) do { if ((ptr) && !(ptr)->__sdidinit) __sinit (ptr); } while (0)
# 186 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;


  struct _reent *_data;



  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;






  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 292 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _RAND48_SEED_0 (0x330e)
#define _RAND48_SEED_1 (0xabcd)
#define _RAND48_SEED_2 (0x1234)
#define _RAND48_MULT_0 (0xe66d)
#define _RAND48_MULT_1 (0xdeec)
#define _RAND48_MULT_2 (0x0005)
#define _RAND48_ADD (0x000b)
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;


  __extension__ unsigned long long _rand_next;

};


#define _REENT_EMERGENCY_SIZE 25
#define _REENT_ASCTIME_SIZE 26
#define _REENT_SIGNAL_SIZE 24
# 349 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
struct _mprec
{

  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;
};


struct _misc_reent
{

  char *_strtok_last;
  _mbstate_t _mblen_state;
  _mbstate_t _wctomb_state;
  _mbstate_t _mbtowc_state;
  char _l64a_buf[8];
  int _getdate_err;
  _mbstate_t _mbrlen_state;
  _mbstate_t _mbrtowc_state;
  _mbstate_t _mbsrtowcs_state;
  _mbstate_t _wcrtomb_state;
  _mbstate_t _wcsrtombs_state;
};



struct _reent
{


  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;

  char *_emergency;

  int __sdidinit;

  int _unspecified_locale_info;
  struct __locale_t *_locale;

  struct _mprec *_mp;

  void (*__cleanup) (struct _reent *);

  int _gamma_signgam;


  int _cvtlen;
  char *_cvtbuf;

  struct _rand48 *_r48;
  struct __tm *_localtime_buf;
  char *_asctime_buf;


  void (**(_sig_func))(int);







  struct _glue __sglue;
  __FILE *__sf;
  struct _misc_reent *_misc;
  char *_signal_buf;
};
# 463 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
extern const struct __sFILE_fake __sf_fake_stdin;
extern const struct __sFILE_fake __sf_fake_stdout;
extern const struct __sFILE_fake __sf_fake_stderr;

#define _REENT_INIT(var) { 0, (__FILE *)&__sf_fake_stdin, (__FILE *)&__sf_fake_stdout, (__FILE *)&__sf_fake_stderr, 0, _NULL, 0, 0, _NULL, _NULL, _NULL, 0, 0, _NULL, _NULL, _NULL, _NULL, _NULL, _REENT_INIT_ATEXIT {_NULL, 0, _NULL}, _NULL, _NULL, _NULL }
# 493 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _REENT_INIT_PTR_ZEROED(var) { (var)->_stdin = (__FILE *)&__sf_fake_stdin; (var)->_stdout = (__FILE *)&__sf_fake_stdout; (var)->_stderr = (__FILE *)&__sf_fake_stderr; }
# 503 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\assert.h" 1 3
# 11 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\assert.h" 3
#undef assert




#define assert(__e) ((__e) ? (void)0 : __assert_func (__FILE__, __LINE__, __ASSERT_FUNC, #__e))
# 26 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\assert.h" 3
#define __ASSERT_FUNC __func__
# 39 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\assert.h" 3
void __assert (const char *, int, const char *)
     __attribute__ ((__noreturn__));
void __assert_func (const char *, int, const char *, const char *)
     __attribute__ ((__noreturn__));


#define static_assert _Static_assert
# 504 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 2 3
#define __reent_assert(x) ((x) ? (void)0 : __assert_func(__FILE__, __LINE__, (char *)0, "REENT malloc succeeded"))
# 514 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _REENT_CHECK(var,what,type,size,init) do { struct _reent *_r = (var); if (_r->what == NULL) { _r->what = (type)malloc(size); __reent_assert(_r->what); init; } } while (0)
# 523 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _REENT_CHECK_TM(var) _REENT_CHECK(var, _localtime_buf, struct __tm *, sizeof *((var)->_localtime_buf), )



#define _REENT_CHECK_ASCTIME_BUF(var) _REENT_CHECK(var, _asctime_buf, char *, _REENT_ASCTIME_SIZE, memset((var)->_asctime_buf, 0, _REENT_ASCTIME_SIZE))




#define _REENT_INIT_RAND48(var) do { struct _reent *_r = (var); _r->_r48->_seed[0] = _RAND48_SEED_0; _r->_r48->_seed[1] = _RAND48_SEED_1; _r->_r48->_seed[2] = _RAND48_SEED_2; _r->_r48->_mult[0] = _RAND48_MULT_0; _r->_r48->_mult[1] = _RAND48_MULT_1; _r->_r48->_mult[2] = _RAND48_MULT_2; _r->_r48->_add = _RAND48_ADD; _r->_r48->_rand_next = 1; } while (0)
# 543 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _REENT_CHECK_RAND48(var) _REENT_CHECK(var, _r48, struct _rand48 *, sizeof *((var)->_r48), _REENT_INIT_RAND48((var)))


#define _REENT_INIT_MP(var) do { struct _reent *_r = (var); _r->_mp->_result_k = 0; _r->_mp->_result = _r->_mp->_p5s = _NULL; _r->_mp->_freelist = _NULL; } while (0)





#define _REENT_CHECK_MP(var) _REENT_CHECK(var, _mp, struct _mprec *, sizeof *((var)->_mp), _REENT_INIT_MP(var))


#define _REENT_CHECK_EMERGENCY(var) _REENT_CHECK(var, _emergency, char *, _REENT_EMERGENCY_SIZE, )


#define _REENT_INIT_MISC(var) do { struct _reent *_r = (var); _r->_misc->_strtok_last = _NULL; _r->_misc->_mblen_state.__count = 0; _r->_misc->_mblen_state.__value.__wch = 0; _r->_misc->_wctomb_state.__count = 0; _r->_misc->_wctomb_state.__value.__wch = 0; _r->_misc->_mbtowc_state.__count = 0; _r->_misc->_mbtowc_state.__value.__wch = 0; _r->_misc->_mbrlen_state.__count = 0; _r->_misc->_mbrlen_state.__value.__wch = 0; _r->_misc->_mbrtowc_state.__count = 0; _r->_misc->_mbrtowc_state.__value.__wch = 0; _r->_misc->_mbsrtowcs_state.__count = 0; _r->_misc->_mbsrtowcs_state.__value.__wch = 0; _r->_misc->_wcrtomb_state.__count = 0; _r->_misc->_wcrtomb_state.__value.__wch = 0; _r->_misc->_wcsrtombs_state.__count = 0; _r->_misc->_wcsrtombs_state.__value.__wch = 0; _r->_misc->_l64a_buf[0] = '\0'; _r->_misc->_getdate_err = 0; } while (0)
# 580 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _REENT_CHECK_MISC(var) _REENT_CHECK(var, _misc, struct _misc_reent *, sizeof *((var)->_misc), _REENT_INIT_MISC(var))


#define _REENT_CHECK_SIGNAL_BUF(var) _REENT_CHECK(var, _signal_buf, char *, _REENT_SIGNAL_SIZE, )


#define _REENT_SIGNGAM(ptr) ((ptr)->_gamma_signgam)
#define _REENT_RAND_NEXT(ptr) ((ptr)->_r48->_rand_next)
#define _REENT_RAND48_SEED(ptr) ((ptr)->_r48->_seed)
#define _REENT_RAND48_MULT(ptr) ((ptr)->_r48->_mult)
#define _REENT_RAND48_ADD(ptr) ((ptr)->_r48->_add)
#define _REENT_MP_RESULT(ptr) ((ptr)->_mp->_result)
#define _REENT_MP_RESULT_K(ptr) ((ptr)->_mp->_result_k)
#define _REENT_MP_P5S(ptr) ((ptr)->_mp->_p5s)
#define _REENT_MP_FREELIST(ptr) ((ptr)->_mp->_freelist)
#define _REENT_ASCTIME_BUF(ptr) ((ptr)->_asctime_buf)
#define _REENT_TM(ptr) ((ptr)->_localtime_buf)
#define _REENT_EMERGENCY(ptr) ((ptr)->_emergency)
#define _REENT_STRTOK_LAST(ptr) ((ptr)->_misc->_strtok_last)
#define _REENT_MBLEN_STATE(ptr) ((ptr)->_misc->_mblen_state)
#define _REENT_MBTOWC_STATE(ptr) ((ptr)->_misc->_mbtowc_state)
#define _REENT_WCTOMB_STATE(ptr) ((ptr)->_misc->_wctomb_state)
#define _REENT_MBRLEN_STATE(ptr) ((ptr)->_misc->_mbrlen_state)
#define _REENT_MBRTOWC_STATE(ptr) ((ptr)->_misc->_mbrtowc_state)
#define _REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_misc->_mbsrtowcs_state)
#define _REENT_WCRTOMB_STATE(ptr) ((ptr)->_misc->_wcrtomb_state)
#define _REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_misc->_wcsrtombs_state)
#define _REENT_L64A_BUF(ptr) ((ptr)->_misc->_l64a_buf)
#define _REENT_GETDATE_ERR_P(ptr) (&((ptr)->_misc->_getdate_err))
#define _REENT_SIGNAL_BUF(ptr) ((ptr)->_signal_buf)
# 800 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(var))); _REENT_INIT_PTR_ZEROED(var); }







#define _Kmax (sizeof (size_t) << 3)







#define __ATTRIBUTE_IMPURE_PTR__ 


extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 832 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _REENT _impure_ptr


#define _GLOBAL_REENT _global_impure_ptr


extern struct _atexit *_global_atexit;
#define _GLOBAL_ATEXIT _global_atexit
# 12 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\string.h" 2 3
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 1 3
# 43 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define _SYS_CDEFS_H_ 



# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 1 3 4
# 48 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 2 3

#define __PMT(args) args
#define __DOTS , ...
#define __THROW 


#define __ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname


#define __ptr_t void *
#define __long_double_t long double

#define __attribute_malloc__ 
#define __attribute_pure__ 
#define __attribute_format_strfmon__(a,b) 
#define __flexarr [0]


#define __bounded 
#define __unbounded 
#define __ptrvalue 
# 78 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __has_extension __has_feature


#define __has_feature(x) 0
# 94 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __BEGIN_DECLS 
#define __END_DECLS 
# 107 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __GNUCLIKE_ASM 3
#define __GNUCLIKE_MATH_BUILTIN_CONSTANTS 



#define __GNUCLIKE___TYPEOF 1
#define __GNUCLIKE___OFFSETOF 1
#define __GNUCLIKE___SECTION 1


#define __GNUCLIKE_CTOR_SECTION_HANDLING 1


#define __GNUCLIKE_BUILTIN_CONSTANT_P 1






#define __GNUCLIKE_BUILTIN_VARARGS 1
#define __GNUCLIKE_BUILTIN_STDARG 1
#define __GNUCLIKE_BUILTIN_VAALIST 1



#define __GNUC_VA_LIST_COMPATIBILITY 1






#define __compiler_membar() __asm __volatile(" " : : : "memory")



#define __GNUCLIKE_BUILTIN_NEXT_ARG 1
#define __GNUCLIKE_MATH_BUILTIN_RELOPS 


#define __GNUCLIKE_BUILTIN_MEMCPY 1


#define __CC_SUPPORTS_INLINE 1
#define __CC_SUPPORTS___INLINE 1
#define __CC_SUPPORTS___INLINE__ 1

#define __CC_SUPPORTS___FUNC__ 1
#define __CC_SUPPORTS_WARNING 1

#define __CC_SUPPORTS_VARADIC_XXX 1

#define __CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1
# 177 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __P(protos) protos
#define __CONCAT1(x,y) x ## y
#define __CONCAT(x,y) __CONCAT1(x,y)
#define __STRING(x) #x
#define __XSTRING(x) __STRING(x)

#define __const const
#define __signed signed
#define __volatile volatile
# 230 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __weak_symbol __attribute__((__weak__))
# 243 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __dead2 __attribute__((__noreturn__))
#define __pure2 __attribute__((__const__))
#define __unused __attribute__((__unused__))
#define __used __attribute__((__used__))
#define __packed __attribute__((__packed__))
#define __aligned(x) __attribute__((__aligned__(x)))
#define __section(x) __attribute__((__section__(x)))


#define __alloc_size(x) __attribute__((__alloc_size__(x)))
#define __alloc_size2(n,x) __attribute__((__alloc_size__(n, x)))





#define __alloc_align(x) __attribute__((__alloc_align__(x)))
# 348 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __generic(expr,t,yes,no) _Generic(expr, t: yes, default: no)
# 366 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __min_size(x) static (x)





#define __malloc_like __attribute__((__malloc__))
#define __pure __attribute__((__pure__))






#define __always_inline __inline__ __attribute__((__always_inline__))





#define __noinline __attribute__ ((__noinline__))





#define __nonnull(x) __attribute__((__nonnull__ x))
#define __nonnull_all __attribute__((__nonnull__))






#define __fastcall __attribute__((__fastcall__))
#define __result_use_check __attribute__((__warn_unused_result__))






#define __returns_twice __attribute__((__returns_twice__))





#define __unreachable() __builtin_unreachable()
# 434 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __restrict restrict
# 467 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __predict_true(exp) __builtin_expect((exp), 1)
#define __predict_false(exp) __builtin_expect((exp), 0)






#define __null_sentinel __attribute__((__sentinel__))
#define __exported __attribute__((__visibility__("default")))


#define __hidden __attribute__((__visibility__("hidden")))
# 489 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __offsetof(type,field) offsetof(type, field)
#define __rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))
# 500 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})
# 522 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))

#define __scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))

#define __format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))
#define __strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))

#define __strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))
# 539 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __printf0like(fmtarg,firstvararg) 




#define __strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))




#define __weak_reference(sym,alias) __asm__(".weak " #alias); __asm__(".equ " #alias ", " #sym)


#define __warn_references(sym,msg) __asm__(".section .gnu.warning." #sym); __asm__(".asciz \"" msg "\""); __asm__(".previous")



#define __sym_compat(sym,impl,verid) __asm__(".symver " #impl ", " #sym "@" #verid)

#define __sym_default(sym,impl,verid) __asm__(".symver " #impl ", " #sym "@@" #verid)
# 593 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __FBSDID(s) struct __hack



#define __RCSID(s) struct __hack



#define __RCSID_SOURCE(s) struct __hack



#define __SCCSID(s) struct __hack



#define __COPYRIGHT(s) struct __hack



#define __DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))



#define __DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))



#define __DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))






#define _Nonnull 
#define _Nullable 
#define _Null_unspecified 
#define __NULLABILITY_PRAGMA_PUSH 
#define __NULLABILITY_PRAGMA_POP 
# 653 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __arg_type_tag(arg_kind,arg_idx,type_tag_idx) 
#define __datatype_type_tag(kind,type) 
# 672 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __lock_annotate(x) 





#define __lockable __lock_annotate(lockable)


#define __locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))

#define __locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))



#define __trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))

#define __trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))



#define __unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))


#define __asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))

#define __asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))



#define __requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))

#define __requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))

#define __requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))



#define __no_lock_analysis __lock_annotate(no_thread_safety_analysis)
# 721 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __nosanitizeaddress 
#define __nosanitizethread 



#define __guarded_by(x) __lock_annotate(guarded_by(x))
#define __pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))
# 13 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\string.h" 2 3


#define __need_size_t 
#define __need_NULL 
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 1 3 4
# 155 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef __need_ptrdiff_t
# 231 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef __need_size_t
# 340 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef __need_wchar_t
# 390 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 18 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\string.h" 2 3


# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_locale.h" 1 3



#define _SYS__LOCALE_H 




struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\string.h" 2 3



# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\strings.h" 1 3
# 30 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\strings.h" 3
#define _STRINGS_H_ 
# 44 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);
# 76 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\string.h" 3
char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);






char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);
# 100 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\string.h" 3
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 177 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\string.h" 3
#define strcmpi strcasecmp


#define stricmp strcasecmp


#define strncmpi strncasecmp


#define strnicmp strncasecmp


# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\string.h" 1 3
# 190 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\string.h" 2 3


# 57 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 2
# 1 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h" 1
# 56 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h" 1
# 29 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define INC_FREERTOS_H 




# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 1 3 4
# 35 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h" 2
# 49 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stdint.h" 1 3 4
# 9 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stdint.h" 3 4
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 1 3 4
# 10 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define _STDINT_H 


# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 1 3 4
# 10 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define _SYS__INTSUP_H 





#define __STDINT_EXP(x) __ ##x ##__
# 35 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
       
       
       
       
       
       
       
       
#undef signed
#undef unsigned
#undef char
#undef short
#undef int
#undef __int20
#undef __int20__
#undef long
#define signed +0
#define unsigned +0
#define char +0
#define short +1
#define __int20 +2
#define __int20__ +2
#define int +2
#define long +4
# 67 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define _INTPTR_EQ_INT 






#define _INT32_EQ_LONG 







#define __INT8 "hh"
# 93 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __INT16 "h"
# 104 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __INT32 "l"
# 113 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __INT64 "ll"






#define __FAST8 
# 129 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __FAST16 






#define __FAST32 
# 147 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __FAST64 "ll"



#define __LEAST8 "hh"
# 162 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __LEAST16 "h"
# 173 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __LEAST32 "l"
# 182 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __LEAST64 "ll"

#undef signed
#undef unsigned
#undef char
#undef short
#undef int
#undef long
       
       
       
       
       
# 194 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#undef __int20
       
# 195 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#undef __int20__
       
       
# 14 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 2 3 4
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_stdint.h" 1 3 4
# 10 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_stdint.h" 3 4
#define _SYS__STDINT_H 
# 20 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_stdint.h" 3 4
typedef __int8_t int8_t ;
#define _INT8_T_DECLARED 


typedef __uint8_t uint8_t ;
#define _UINT8_T_DECLARED 

#define __int8_t_defined 1




typedef __int16_t int16_t ;
#define _INT16_T_DECLARED 


typedef __uint16_t uint16_t ;
#define _UINT16_T_DECLARED 

#define __int16_t_defined 1




typedef __int32_t int32_t ;
#define _INT32_T_DECLARED 


typedef __uint32_t uint32_t ;
#define _UINT32_T_DECLARED 

#define __int32_t_defined 1




typedef __int64_t int64_t ;
#define _INT64_T_DECLARED 


typedef __uint64_t uint64_t ;
#define _UINT64_T_DECLARED 

#define __int64_t_defined 1



typedef __intmax_t intmax_t;
#define _INTMAX_T_DECLARED 



typedef __uintmax_t uintmax_t;
#define _UINTMAX_T_DECLARED 



typedef __intptr_t intptr_t;
#define _INTPTR_T_DECLARED 



typedef __uintptr_t uintptr_t;
#define _UINTPTR_T_DECLARED 
# 15 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;
#define __int_least8_t_defined 1



typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;
#define __int_least16_t_defined 1



typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;
#define __int_least32_t_defined 1



typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
#define __int_least64_t_defined 1
# 51 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
#define __int_fast8_t_defined 1







  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
#define __int_fast16_t_defined 1







  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
#define __int_fast32_t_defined 1







  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
#define __int_fast64_t_defined 1
# 128 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INTPTR_MIN (-__INTPTR_MAX__ - 1)
#define INTPTR_MAX (__INTPTR_MAX__)
#define UINTPTR_MAX (__UINTPTR_MAX__)
# 152 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT8_MIN (-__INT8_MAX__ - 1)
#define INT8_MAX (__INT8_MAX__)
#define UINT8_MAX (__UINT8_MAX__)







#define INT_LEAST8_MIN (-__INT_LEAST8_MAX__ - 1)
#define INT_LEAST8_MAX (__INT_LEAST8_MAX__)
#define UINT_LEAST8_MAX (__UINT_LEAST8_MAX__)
# 174 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT16_MIN (-__INT16_MAX__ - 1)
#define INT16_MAX (__INT16_MAX__)
#define UINT16_MAX (__UINT16_MAX__)







#define INT_LEAST16_MIN (-__INT_LEAST16_MAX__ - 1)
#define INT_LEAST16_MAX (__INT_LEAST16_MAX__)
#define UINT_LEAST16_MAX (__UINT_LEAST16_MAX__)
# 196 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT32_MIN (-__INT32_MAX__ - 1)
#define INT32_MAX (__INT32_MAX__)
#define UINT32_MAX (__UINT32_MAX__)
# 212 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT_LEAST32_MIN (-__INT_LEAST32_MAX__ - 1)
#define INT_LEAST32_MAX (__INT_LEAST32_MAX__)
#define UINT_LEAST32_MAX (__UINT_LEAST32_MAX__)
# 230 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT64_MIN (-__INT64_MAX__ - 1)
#define INT64_MAX (__INT64_MAX__)
#define UINT64_MAX (__UINT64_MAX__)
# 246 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT_LEAST64_MIN (-__INT_LEAST64_MAX__ - 1)
#define INT_LEAST64_MAX (__INT_LEAST64_MAX__)
#define UINT_LEAST64_MAX (__UINT_LEAST64_MAX__)
# 262 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT_FAST8_MIN (-__INT_FAST8_MAX__ - 1)
#define INT_FAST8_MAX (__INT_FAST8_MAX__)
#define UINT_FAST8_MAX (__UINT_FAST8_MAX__)
# 278 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT_FAST16_MIN (-__INT_FAST16_MAX__ - 1)
#define INT_FAST16_MAX (__INT_FAST16_MAX__)
#define UINT_FAST16_MAX (__UINT_FAST16_MAX__)
# 294 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT_FAST32_MIN (-__INT_FAST32_MAX__ - 1)
#define INT_FAST32_MAX (__INT_FAST32_MAX__)
#define UINT_FAST32_MAX (__UINT_FAST32_MAX__)
# 310 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT_FAST64_MIN (-__INT_FAST64_MAX__ - 1)
#define INT_FAST64_MAX (__INT_FAST64_MAX__)
#define UINT_FAST64_MAX (__UINT_FAST64_MAX__)
# 326 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INTMAX_MAX (__INTMAX_MAX__)
#define INTMAX_MIN (-INTMAX_MAX - 1)







#define UINTMAX_MAX (__UINTMAX_MAX__)







#define SIZE_MAX (__SIZE_MAX__)





#define SIG_ATOMIC_MIN (-__STDINT_EXP(INT_MAX) - 1)
#define SIG_ATOMIC_MAX (__STDINT_EXP(INT_MAX))



#define PTRDIFF_MAX (__PTRDIFF_MAX__)



#define PTRDIFF_MIN (-PTRDIFF_MAX - 1)




#define WCHAR_MIN (__WCHAR_MIN__)
# 374 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define WCHAR_MAX (__WCHAR_MAX__)
# 384 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define WINT_MAX (__WINT_MAX__)




#define WINT_MIN (__WINT_MIN__)






#define INT8_C(x) __INT8_C(x)
#define UINT8_C(x) __UINT8_C(x)
# 408 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT16_C(x) __INT16_C(x)
#define UINT16_C(x) __UINT16_C(x)
# 420 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT32_C(x) __INT32_C(x)
#define UINT32_C(x) __UINT32_C(x)
# 433 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT64_C(x) __INT64_C(x)
#define UINT64_C(x) __UINT64_C(x)
# 449 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h" 3 4
#define INTMAX_C(x) __INTMAX_C(x)
#define UINTMAX_C(x) __UINTMAX_C(x)
# 10 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stdint.h" 2 3 4



#define _GCC_WRAP_STDINT_H 
# 50 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h" 2






# 1 "../Core/Inc/FreeRTOSConfig.h" 1
# 32 "../Core/Inc/FreeRTOSConfig.h"
#define FREERTOS_CONFIG_H 
# 53 "../Core/Inc/FreeRTOSConfig.h"
  
# 53 "../Core/Inc/FreeRTOSConfig.h"
 extern uint32_t SystemCoreClock;

#define configENABLE_FPU 0
#define configENABLE_MPU 0

#define configUSE_PREEMPTION 1
#define configSUPPORT_STATIC_ALLOCATION 1
#define configSUPPORT_DYNAMIC_ALLOCATION 1
#define configUSE_IDLE_HOOK 0
#define configUSE_TICK_HOOK 0
#define configCPU_CLOCK_HZ ( SystemCoreClock )
#define configTICK_RATE_HZ ((TickType_t)1000)
#define configMAX_PRIORITIES ( 7 )
#define configMINIMAL_STACK_SIZE ((uint16_t)128)
#define configTOTAL_HEAP_SIZE ((size_t)7000)
#define configMAX_TASK_NAME_LEN ( 16 )
#define configUSE_16_BIT_TICKS 0
#define configUSE_MUTEXES 1
#define configQUEUE_REGISTRY_SIZE 8
#define configUSE_PORT_OPTIMISED_TASK_SELECTION 1



#define configMESSAGE_BUFFER_LENGTH_TYPE size_t



#define configUSE_CO_ROUTINES 0
#define configMAX_CO_ROUTINE_PRIORITIES ( 2 )


#define configUSE_TIMERS 1
#define configTIMER_TASK_PRIORITY ( 5 )
#define configTIMER_QUEUE_LENGTH 10
#define configTIMER_TASK_STACK_DEPTH 350


#define configUSE_NEWLIB_REENTRANT 1



#define INCLUDE_vTaskPrioritySet 1
#define INCLUDE_uxTaskPriorityGet 1
#define INCLUDE_vTaskDelete 1
#define INCLUDE_vTaskCleanUpResources 0
#define INCLUDE_vTaskSuspend 1
#define INCLUDE_vTaskDelayUntil 0
#define INCLUDE_vTaskDelay 1
#define INCLUDE_xTaskGetSchedulerState 1
#define INCLUDE_xTimerPendFunctionCall 1






#define configPRIO_BITS 4




#define configLIBRARY_LOWEST_INTERRUPT_PRIORITY 15





#define configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY 5



#define configKERNEL_INTERRUPT_PRIORITY ( configLIBRARY_LOWEST_INTERRUPT_PRIORITY << (8 - configPRIO_BITS) )


#define configMAX_SYSCALL_INTERRUPT_PRIORITY ( configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY << (8 - configPRIO_BITS) )




#define configASSERT(x) if ((x) == 0) {taskDISABLE_INTERRUPTS(); for( ;; );}




#define vPortSVCHandler SVC_Handler
#define xPortPendSVHandler PendSV_Handler




#define xPortSysTickHandler SysTick_Handler
# 57 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h" 2


# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/projdefs.h" 1
# 29 "../Middlewares/Third_Party/FreeRTOS/Source/include/projdefs.h"
#define PROJDEFS_H 





typedef void (*TaskFunction_t)( void * );





#define pdMS_TO_TICKS(xTimeInMs) ( ( TickType_t ) ( ( ( TickType_t ) ( xTimeInMs ) * ( TickType_t ) configTICK_RATE_HZ ) / ( TickType_t ) 1000 ) )


#define pdFALSE ( ( BaseType_t ) 0 )
#define pdTRUE ( ( BaseType_t ) 1 )

#define pdPASS ( pdTRUE )
#define pdFAIL ( pdFALSE )
#define errQUEUE_EMPTY ( ( BaseType_t ) 0 )
#define errQUEUE_FULL ( ( BaseType_t ) 0 )


#define errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY ( -1 )
#define errQUEUE_BLOCKED ( -4 )
#define errQUEUE_YIELD ( -5 )



#define configUSE_LIST_DATA_INTEGRITY_CHECK_BYTES 0





#define pdINTEGRITY_CHECK_VALUE 0x5a5a5a5aUL




#define pdFREERTOS_ERRNO_NONE 0
#define pdFREERTOS_ERRNO_ENOENT 2
#define pdFREERTOS_ERRNO_EINTR 4
#define pdFREERTOS_ERRNO_EIO 5
#define pdFREERTOS_ERRNO_ENXIO 6
#define pdFREERTOS_ERRNO_EBADF 9
#define pdFREERTOS_ERRNO_EAGAIN 11
#define pdFREERTOS_ERRNO_EWOULDBLOCK 11
#define pdFREERTOS_ERRNO_ENOMEM 12
#define pdFREERTOS_ERRNO_EACCES 13
#define pdFREERTOS_ERRNO_EFAULT 14
#define pdFREERTOS_ERRNO_EBUSY 16
#define pdFREERTOS_ERRNO_EEXIST 17
#define pdFREERTOS_ERRNO_EXDEV 18
#define pdFREERTOS_ERRNO_ENODEV 19
#define pdFREERTOS_ERRNO_ENOTDIR 20
#define pdFREERTOS_ERRNO_EISDIR 21
#define pdFREERTOS_ERRNO_EINVAL 22
#define pdFREERTOS_ERRNO_ENOSPC 28
#define pdFREERTOS_ERRNO_ESPIPE 29
#define pdFREERTOS_ERRNO_EROFS 30
#define pdFREERTOS_ERRNO_EUNATCH 42
#define pdFREERTOS_ERRNO_EBADE 50
#define pdFREERTOS_ERRNO_EFTYPE 79
#define pdFREERTOS_ERRNO_ENMFILE 89
#define pdFREERTOS_ERRNO_ENOTEMPTY 90
#define pdFREERTOS_ERRNO_ENAMETOOLONG 91
#define pdFREERTOS_ERRNO_EOPNOTSUPP 95
#define pdFREERTOS_ERRNO_ENOBUFS 105
#define pdFREERTOS_ERRNO_ENOPROTOOPT 109
#define pdFREERTOS_ERRNO_EADDRINUSE 112
#define pdFREERTOS_ERRNO_ETIMEDOUT 116
#define pdFREERTOS_ERRNO_EINPROGRESS 119
#define pdFREERTOS_ERRNO_EALREADY 120
#define pdFREERTOS_ERRNO_EADDRNOTAVAIL 125
#define pdFREERTOS_ERRNO_EISCONN 127
#define pdFREERTOS_ERRNO_ENOTCONN 128
#define pdFREERTOS_ERRNO_ENOMEDIUM 135
#define pdFREERTOS_ERRNO_EILSEQ 138
#define pdFREERTOS_ERRNO_ECANCELED 140



#define pdFREERTOS_LITTLE_ENDIAN 0
#define pdFREERTOS_BIG_ENDIAN 1


#define pdLITTLE_ENDIAN pdFREERTOS_LITTLE_ENDIAN
#define pdBIG_ENDIAN pdFREERTOS_BIG_ENDIAN
# 60 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h" 2


# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h" 1
# 33 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"
#define PORTABLE_H 
# 45 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"
# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/deprecated_definitions.h" 1
# 29 "../Middlewares/Third_Party/FreeRTOS/Source/include/deprecated_definitions.h"
#define DEPRECATED_DEFINITIONS_H 
# 46 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h" 2






# 1 "../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
# 30 "../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h"
#define PORTMACRO_H 
# 47 "../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h"
#define portCHAR char
#define portFLOAT float
#define portDOUBLE double
#define portLONG long
#define portSHORT short
#define portSTACK_TYPE uint32_t
#define portBASE_TYPE long

typedef uint32_t StackType_t;
typedef long BaseType_t;
typedef unsigned long UBaseType_t;





 typedef uint32_t TickType_t;
#define portMAX_DELAY ( TickType_t ) 0xffffffffUL



#define portTICK_TYPE_IS_ATOMIC 1




#define portSTACK_GROWTH ( -1 )
#define portTICK_PERIOD_MS ( ( TickType_t ) 1000 / configTICK_RATE_HZ )
#define portBYTE_ALIGNMENT 8



#define portYIELD() { portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT; __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); }
# 90 "../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h"
#define portNVIC_INT_CTRL_REG ( * ( ( volatile uint32_t * ) 0xe000ed04 ) )
#define portNVIC_PENDSVSET_BIT ( 1UL << 28UL )
#define portEND_SWITCHING_ISR(xSwitchRequired) if( xSwitchRequired != pdFALSE ) portYIELD()
#define portYIELD_FROM_ISR(x) portEND_SWITCHING_ISR( x )



extern void vPortEnterCritical( void );
extern void vPortExitCritical( void );
#define portSET_INTERRUPT_MASK_FROM_ISR() ulPortRaiseBASEPRI()
#define portCLEAR_INTERRUPT_MASK_FROM_ISR(x) vPortSetBASEPRI(x)
#define portDISABLE_INTERRUPTS() vPortRaiseBASEPRI()
#define portENABLE_INTERRUPTS() vPortSetBASEPRI(0)
#define portENTER_CRITICAL() vPortEnterCritical()
#define portEXIT_CRITICAL() vPortExitCritical()






#define portTASK_FUNCTION_PROTO(vFunction,pvParameters) void vFunction( void *pvParameters )
#define portTASK_FUNCTION(vFunction,pvParameters) void vFunction( void *pvParameters )




 extern void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime );
#define portSUPPRESS_TICKS_AND_SLEEP(xExpectedIdleTime) vPortSuppressTicksAndSleep( xExpectedIdleTime )
# 130 "../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h"
 __attribute__( ( always_inline ) ) static inline uint8_t ucPortCountLeadingZeros( uint32_t ulBitmap )
 {
 uint8_t ucReturn;

  __asm volatile ( "clz %0, %1" : "=r" ( ucReturn ) : "r" ( ulBitmap ) : "memory" );
  return ucReturn;
 }







#define portRECORD_READY_PRIORITY(uxPriority,uxReadyPriorities) ( uxReadyPriorities ) |= ( 1UL << ( uxPriority ) )
#define portRESET_READY_PRIORITY(uxPriority,uxReadyPriorities) ( uxReadyPriorities ) &= ~( 1UL << ( uxPriority ) )



#define portGET_HIGHEST_PRIORITY(uxTopPriority,uxReadyPriorities) uxTopPriority = ( 31UL - ( uint32_t ) ucPortCountLeadingZeros( ( uxReadyPriorities ) ) )






 void vPortValidateInterruptPriority( void );
#define portASSERT_IF_INTERRUPT_PRIORITY_INVALID() vPortValidateInterruptPriority()



#define portNOP() 

#define portINLINE __inline


#define portFORCE_INLINE inline __attribute__(( always_inline))


inline __attribute__(( always_inline)) static BaseType_t xPortIsInsideInterrupt( void )
{
uint32_t ulCurrentInterrupt;
BaseType_t xReturn;


 __asm volatile( "mrs %0, ipsr" : "=r"( ulCurrentInterrupt ) :: "memory" );

 if( ulCurrentInterrupt == 0 )
 {
  xReturn = ( ( BaseType_t ) 0 );
 }
 else
 {
  xReturn = ( ( BaseType_t ) 1 );
 }

 return xReturn;
}



inline __attribute__(( always_inline)) static void vPortRaiseBASEPRI( void )
{
uint32_t ulNewBASEPRI;

 __asm volatile
 (
  "	mov %0, %1												\n"
  "	msr basepri, %0											\n"
  "	isb														\n"
  "	dsb														\n"
  :"=r" (ulNewBASEPRI) : "i" ( ( 5 << (8 - 4) ) ) : "memory"
 );
}



inline __attribute__(( always_inline)) static uint32_t ulPortRaiseBASEPRI( void )
{
uint32_t ulOriginalBASEPRI, ulNewBASEPRI;

 __asm volatile
 (
  "	mrs %0, basepri											\n"
  "	mov %1, %2												\n"
  "	msr basepri, %1											\n"
  "	isb														\n"
  "	dsb														\n"
  :"=r" (ulOriginalBASEPRI), "=r" (ulNewBASEPRI) : "i" ( ( 5 << (8 - 4) ) ) : "memory"
 );



 return ulOriginalBASEPRI;
}


inline __attribute__(( always_inline)) static void vPortSetBASEPRI( uint32_t ulNewMaskValue )
{
 __asm volatile
 (
  "	msr basepri, %0	" :: "r" ( ulNewMaskValue ) : "memory"
 );
}


#define portMEMORY_BARRIER() __asm volatile( "" ::: "memory" )
# 53 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h" 2
# 64 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"
#define portBYTE_ALIGNMENT_MASK ( 0x0007 )
# 84 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"
#define portNUM_CONFIGURABLE_REGIONS 1



#define portHAS_STACK_OVERFLOW_CHECKING 0



#define portARCH_NAME NULL






# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/mpu_wrappers.h" 1
# 29 "../Middlewares/Third_Party/FreeRTOS/Source/include/mpu_wrappers.h"
#define MPU_WRAPPERS_H 
# 180 "../Middlewares/Third_Party/FreeRTOS/Source/include/mpu_wrappers.h"
#define PRIVILEGED_FUNCTION 
#define PRIVILEGED_DATA 
#define FREERTOS_SYSTEM_CALL 
#define portUSING_MPU_WRAPPERS 0
# 100 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h" 2
# 117 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"
  StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;





typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;


typedef struct xHeapStats
{
 size_t xAvailableHeapSpaceInBytes;
 size_t xSizeOfLargestFreeBlockInBytes;
 size_t xSizeOfSmallestFreeBlockInBytes;
 size_t xNumberOfFreeBlocks;
 size_t xMinimumEverFreeBytesRemaining;
 size_t xNumberOfSuccessfulAllocations;
 size_t xNumberOfSuccessfulFrees;
} HeapStats_t;
# 152 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void vPortGetHeapStats( HeapStats_t *pxHeapStats );




void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 63 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h" 2
# 71 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\reent.h" 1 3
# 91 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\reent.h" 3
#define _REENT_H_ 




#define __need_size_t 
#define __need_ptrdiff_t 
# 1 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 1 3 4
# 155 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef __need_ptrdiff_t
# 231 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef __need_size_t
# 340 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef __need_wchar_t
# 390 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 99 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\reent.h" 2 3



# 101 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\reent.h" 3
struct stat;
struct tms;
struct timeval;
struct timezone;
# 139 "f:\\app\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\reent.h" 3
extern int _close_r (struct _reent *, int);
extern int _execve_r (struct _reent *, const char *, char *const *, char *const *);
extern int _fcntl_r (struct _reent *, int, int, int);
extern int _fork_r (struct _reent *);
extern int _fstat_r (struct _reent *, int, struct stat *);
extern int _getpid_r (struct _reent *);
extern int _isatty_r (struct _reent *, int);
extern int _kill_r (struct _reent *, int, int);
extern int _link_r (struct _reent *, const char *, const char *);
extern _off_t _lseek_r (struct _reent *, int, _off_t, int);
extern int _mkdir_r (struct _reent *, const char *, int);
extern int _open_r (struct _reent *, const char *, int, int);
extern _ssize_t _read_r (struct _reent *, int, void *, size_t);
extern int _rename_r (struct _reent *, const char *, const char *);
extern void *_sbrk_r (struct _reent *, ptrdiff_t);
extern int _stat_r (struct _reent *, const char *, struct stat *);
extern unsigned long _times_r (struct _reent *, struct tms *);
extern int _unlink_r (struct _reent *, const char *);
extern int _wait_r (struct _reent *, int *);
extern _ssize_t _write_r (struct _reent *, int, const void *, size_t);


extern int _gettimeofday_r (struct _reent *, struct timeval *__tp, void *__tzp);
# 72 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h" 2
# 136 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define INCLUDE_xTaskGetIdleTaskHandle 0



#define INCLUDE_xTaskAbortDelay 0



#define INCLUDE_xQueueGetMutexHolder 0



#define INCLUDE_xSemaphoreGetMutexHolder INCLUDE_xQueueGetMutexHolder



#define INCLUDE_xTaskGetHandle 0



#define INCLUDE_uxTaskGetStackHighWaterMark 0



#define INCLUDE_uxTaskGetStackHighWaterMark2 0



#define INCLUDE_eTaskGetState 0



#define INCLUDE_xTaskResumeFromISR 1
# 180 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define INCLUDE_xTaskGetCurrentTaskHandle 0
# 190 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define configUSE_DAEMON_TASK_STARTUP_HOOK 0



#define configUSE_APPLICATION_TASK_TAG 0



#define configNUM_THREAD_LOCAL_STORAGE_POINTERS 0



#define configUSE_RECURSIVE_MUTEXES 0
# 214 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define configUSE_COUNTING_SEMAPHORES 0



#define configUSE_ALTERNATIVE_API 0



#define portCRITICAL_NESTING_IN_TCB 0







#define configIDLE_SHOULD_YIELD 1
# 241 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define configASSERT_DEFINED 1
# 250 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define configPRECONDITION(X) configASSERT(X)
#define configPRECONDITION_DEFINED 0
# 261 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define portSOFTWARE_BARRIER() 
# 290 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define portCLEAN_UP_TCB(pxTCB) ( void ) pxTCB



#define portPRE_TASK_DELETE_HOOK(pvTaskToDelete,pxYieldPending) 



#define portSETUP_TCB(pxTCB) ( void ) pxTCB
# 312 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define portPOINTER_SIZE_TYPE uint32_t






#define traceSTART() 





#define traceEND() 





#define traceTASK_SWITCHED_IN() 





#define traceINCREASE_TICK_COUNT(x) 




#define traceLOW_POWER_IDLE_BEGIN() 




#define traceLOW_POWER_IDLE_END() 





#define traceTASK_SWITCHED_OUT() 
# 362 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define traceTASK_PRIORITY_INHERIT(pxTCBOfMutexHolder,uxInheritedPriority) 







#define traceTASK_PRIORITY_DISINHERIT(pxTCBOfMutexHolder,uxOriginalPriority) 







#define traceBLOCKING_ON_QUEUE_RECEIVE(pxQueue) 







#define traceBLOCKING_ON_QUEUE_PEEK(pxQueue) 







#define traceBLOCKING_ON_QUEUE_SEND(pxQueue) 



#define configCHECK_FOR_STACK_OVERFLOW 0



#define configRECORD_STACK_HIGH_ADDRESS 0



#define configINCLUDE_FREERTOS_TASK_C_ADDITIONS_H 0





#define traceMOVED_TASK_TO_READY_STATE(pxTCB) 



#define tracePOST_MOVED_TASK_TO_READY_STATE(pxTCB) 



#define traceQUEUE_CREATE(pxNewQueue) 



#define traceQUEUE_CREATE_FAILED(ucQueueType) 



#define traceCREATE_MUTEX(pxNewQueue) 



#define traceCREATE_MUTEX_FAILED() 



#define traceGIVE_MUTEX_RECURSIVE(pxMutex) 



#define traceGIVE_MUTEX_RECURSIVE_FAILED(pxMutex) 



#define traceTAKE_MUTEX_RECURSIVE(pxMutex) 



#define traceTAKE_MUTEX_RECURSIVE_FAILED(pxMutex) 



#define traceCREATE_COUNTING_SEMAPHORE() 



#define traceCREATE_COUNTING_SEMAPHORE_FAILED() 



#define traceQUEUE_SEND(pxQueue) 



#define traceQUEUE_SEND_FAILED(pxQueue) 



#define traceQUEUE_RECEIVE(pxQueue) 



#define traceQUEUE_PEEK(pxQueue) 



#define traceQUEUE_PEEK_FAILED(pxQueue) 



#define traceQUEUE_PEEK_FROM_ISR(pxQueue) 



#define traceQUEUE_RECEIVE_FAILED(pxQueue) 



#define traceQUEUE_SEND_FROM_ISR(pxQueue) 



#define traceQUEUE_SEND_FROM_ISR_FAILED(pxQueue) 



#define traceQUEUE_RECEIVE_FROM_ISR(pxQueue) 



#define traceQUEUE_RECEIVE_FROM_ISR_FAILED(pxQueue) 



#define traceQUEUE_PEEK_FROM_ISR_FAILED(pxQueue) 



#define traceQUEUE_DELETE(pxQueue) 



#define traceTASK_CREATE(pxNewTCB) 



#define traceTASK_CREATE_FAILED() 



#define traceTASK_DELETE(pxTaskToDelete) 



#define traceTASK_DELAY_UNTIL(x) 



#define traceTASK_DELAY() 



#define traceTASK_PRIORITY_SET(pxTask,uxNewPriority) 



#define traceTASK_SUSPEND(pxTaskToSuspend) 



#define traceTASK_RESUME(pxTaskToResume) 



#define traceTASK_RESUME_FROM_ISR(pxTaskToResume) 



#define traceTASK_INCREMENT_TICK(xTickCount) 



#define traceTIMER_CREATE(pxNewTimer) 



#define traceTIMER_CREATE_FAILED() 



#define traceTIMER_COMMAND_SEND(xTimer,xMessageID,xMessageValueValue,xReturn) 



#define traceTIMER_EXPIRED(pxTimer) 



#define traceTIMER_COMMAND_RECEIVED(pxTimer,xMessageID,xMessageValue) 



#define traceMALLOC(pvAddress,uiSize) 



#define traceFREE(pvAddress,uiSize) 



#define traceEVENT_GROUP_CREATE(xEventGroup) 



#define traceEVENT_GROUP_CREATE_FAILED() 



#define traceEVENT_GROUP_SYNC_BLOCK(xEventGroup,uxBitsToSet,uxBitsToWaitFor) 



#define traceEVENT_GROUP_SYNC_END(xEventGroup,uxBitsToSet,uxBitsToWaitFor,xTimeoutOccurred) ( void ) xTimeoutOccurred



#define traceEVENT_GROUP_WAIT_BITS_BLOCK(xEventGroup,uxBitsToWaitFor) 



#define traceEVENT_GROUP_WAIT_BITS_END(xEventGroup,uxBitsToWaitFor,xTimeoutOccurred) ( void ) xTimeoutOccurred



#define traceEVENT_GROUP_CLEAR_BITS(xEventGroup,uxBitsToClear) 



#define traceEVENT_GROUP_CLEAR_BITS_FROM_ISR(xEventGroup,uxBitsToClear) 



#define traceEVENT_GROUP_SET_BITS(xEventGroup,uxBitsToSet) 



#define traceEVENT_GROUP_SET_BITS_FROM_ISR(xEventGroup,uxBitsToSet) 



#define traceEVENT_GROUP_DELETE(xEventGroup) 



#define tracePEND_FUNC_CALL(xFunctionToPend,pvParameter1,ulParameter2,ret) 



#define tracePEND_FUNC_CALL_FROM_ISR(xFunctionToPend,pvParameter1,ulParameter2,ret) 



#define traceQUEUE_REGISTRY_ADD(xQueue,pcQueueName) 



#define traceTASK_NOTIFY_TAKE_BLOCK() 



#define traceTASK_NOTIFY_TAKE() 



#define traceTASK_NOTIFY_WAIT_BLOCK() 



#define traceTASK_NOTIFY_WAIT() 



#define traceTASK_NOTIFY() 



#define traceTASK_NOTIFY_FROM_ISR() 



#define traceTASK_NOTIFY_GIVE_FROM_ISR() 



#define traceSTREAM_BUFFER_CREATE_FAILED(xIsMessageBuffer) 



#define traceSTREAM_BUFFER_CREATE_STATIC_FAILED(xReturn,xIsMessageBuffer) 



#define traceSTREAM_BUFFER_CREATE(pxStreamBuffer,xIsMessageBuffer) 



#define traceSTREAM_BUFFER_DELETE(xStreamBuffer) 



#define traceSTREAM_BUFFER_RESET(xStreamBuffer) 



#define traceBLOCKING_ON_STREAM_BUFFER_SEND(xStreamBuffer) 



#define traceSTREAM_BUFFER_SEND(xStreamBuffer,xBytesSent) 



#define traceSTREAM_BUFFER_SEND_FAILED(xStreamBuffer) 



#define traceSTREAM_BUFFER_SEND_FROM_ISR(xStreamBuffer,xBytesSent) 



#define traceBLOCKING_ON_STREAM_BUFFER_RECEIVE(xStreamBuffer) 



#define traceSTREAM_BUFFER_RECEIVE(xStreamBuffer,xReceivedLength) 



#define traceSTREAM_BUFFER_RECEIVE_FAILED(xStreamBuffer) 



#define traceSTREAM_BUFFER_RECEIVE_FROM_ISR(xStreamBuffer,xReceivedLength) 



#define configGENERATE_RUN_TIME_STATS 0
# 734 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define portCONFIGURE_TIMER_FOR_RUN_TIME_STATS() 



#define configUSE_MALLOC_FAILED_HOOK 0



#define portPRIVILEGE_BIT ( ( UBaseType_t ) 0x00 )



#define portYIELD_WITHIN_API portYIELD







#define configEXPECTED_IDLE_TIME_BEFORE_SLEEP 2







#define configUSE_TICKLESS_IDLE 0



#define configPRE_SUPPRESS_TICKS_AND_SLEEP_PROCESSING(x) 



#define configPRE_SLEEP_PROCESSING(x) 



#define configPOST_SLEEP_PROCESSING(x) 



#define configUSE_QUEUE_SETS 0



#define portTASK_USES_FLOATING_POINT() 



#define portALLOCATE_SECURE_CONTEXT(ulSecureStackSize) 



#define portDONT_DISCARD 



#define configUSE_TIME_SLICING 1



#define configINCLUDE_APPLICATION_DEFINED_PRIVILEGED_FUNCTIONS 0



#define configUSE_STATS_FORMATTING_FUNCTIONS 0







#define configUSE_TRACE_FACILITY 0



#define mtCOVERAGE_TEST_MARKER() 



#define mtCOVERAGE_TEST_DELAY() 



#define portASSERT_IF_IN_ISR() 







#define configAPPLICATION_ALLOCATED_HEAP 0



#define configUSE_TASK_NOTIFICATIONS 1



#define configUSE_POSIX_ERRNO 0
# 858 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define configSTACK_DEPTH_TYPE uint16_t
# 884 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define configINITIAL_TICK_COUNT 0
# 898 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define portTICK_TYPE_ENTER_CRITICAL() 
#define portTICK_TYPE_EXIT_CRITICAL() 
#define portTICK_TYPE_SET_INTERRUPT_MASK_FROM_ISR() 0
#define portTICK_TYPE_CLEAR_INTERRUPT_MASK_FROM_ISR(x) ( void ) x





#define configENABLE_BACKWARD_COMPATIBILITY 1
# 921 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define configPRINTF(X) 





#define configMAX(a,b) ( ( ( a ) > ( b ) ) ? ( a ) : ( b ) )





#define configMIN(a,b) ( ( ( a ) < ( b ) ) ? ( a ) : ( b ) )



#define eTaskStateGet eTaskGetState
#define portTickType TickType_t
#define xTaskHandle TaskHandle_t
#define xQueueHandle QueueHandle_t
#define xSemaphoreHandle SemaphoreHandle_t
#define xQueueSetHandle QueueSetHandle_t
#define xQueueSetMemberHandle QueueSetMemberHandle_t
#define xTimeOutType TimeOut_t
#define xMemoryRegion MemoryRegion_t
#define xTaskParameters TaskParameters_t
#define xTaskStatusType TaskStatus_t
#define xTimerHandle TimerHandle_t
#define xCoRoutineHandle CoRoutineHandle_t
#define pdTASK_HOOK_CODE TaskHookFunction_t
#define portTICK_RATE_MS portTICK_PERIOD_MS
#define pcTaskGetTaskName pcTaskGetName
#define pcTimerGetTimerName pcTimerGetName
#define pcQueueGetQueueName pcQueueGetName
#define vTaskGetTaskInfo vTaskGetInfo
#define xTaskGetIdleRunTimeCounter ulTaskGetIdleRunTimeCounter



#define tmrTIMER_CALLBACK TimerCallbackFunction_t
#define pdTASK_CODE TaskFunction_t
#define xListItem ListItem_t
#define xList List_t



#define pxContainer pvContainer
# 979 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define configUSE_TASK_FPU_SUPPORT 1
# 997 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define configENABLE_TRUSTZONE 1





#define configRUN_FREERTOS_SECURE_ONLY 0
# 1048 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
#define tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE ( ( ( portUSING_MPU_WRAPPERS == 0 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 1 ) ) || ( ( portUSING_MPU_WRAPPERS == 1 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) ) )
# 1061 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

# 1061 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 4 ];



};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{



 UBaseType_t uxDummy2;
 void *pvDummy3;
 StaticMiniListItem_t xDummy4;



} StaticList_t;
# 1112 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;



 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 16 ) ];
# 1132 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
  UBaseType_t uxDummy12[ 2 ];
# 1144 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
  struct _reent xDummy17;


  uint32_t ulDummy18;
  uint8_t ucDummy19;


  uint8_t uxDummy20;
# 1160 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
} StaticTask_t;
# 1176 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];
 uint8_t ucDummy5[ 2 ];


  uint8_t ucDummy6;
# 1203 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1220 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;






   uint8_t ucDummy4;


} StaticEventGroup_t;
# 1249 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 void *pvDummy5;
 TaskFunction_t pvDummy6;



 uint8_t ucDummy8;

} StaticTimer_t;
# 1277 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;



} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 57 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h" 2
# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h" 1
# 30 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
#define INC_TASK_H 





# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h" 1
# 61 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
#define LIST_H 
# 92 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
#define configLIST_VOLATILE 
# 106 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
#define listFIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE 
#define listSECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE 
#define listFIRST_LIST_INTEGRITY_CHECK_VALUE 
#define listSECOND_LIST_INTEGRITY_CHECK_VALUE 
#define listSET_FIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE(pxItem) 
#define listSET_SECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE(pxItem) 
#define listSET_LIST_INTEGRITY_CHECK_1_VALUE(pxList) 
#define listSET_LIST_INTEGRITY_CHECK_2_VALUE(pxList) 
#define listTEST_LIST_ITEM_INTEGRITY(pxItem) 
#define listTEST_LIST_INTEGRITY(pxList) 
# 139 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
struct xLIST;
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 struct xLIST * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;

struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;




typedef struct xLIST
{

 volatile UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;
# 180 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
#define listSET_LIST_ITEM_OWNER(pxListItem,pxOwner) ( ( pxListItem )->pvOwner = ( void * ) ( pxOwner ) )
# 189 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
#define listGET_LIST_ITEM_OWNER(pxListItem) ( ( pxListItem )->pvOwner )
# 198 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
#define listSET_LIST_ITEM_VALUE(pxListItem,xValue) ( ( pxListItem )->xItemValue = ( xValue ) )
# 208 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
#define listGET_LIST_ITEM_VALUE(pxListItem) ( ( pxListItem )->xItemValue )
# 217 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
#define listGET_ITEM_VALUE_OF_HEAD_ENTRY(pxList) ( ( ( pxList )->xListEnd ).pxNext->xItemValue )







#define listGET_HEAD_ENTRY(pxList) ( ( ( pxList )->xListEnd ).pxNext )







#define listGET_NEXT(pxListItem) ( ( pxListItem )->pxNext )







#define listGET_END_MARKER(pxList) ( ( ListItem_t const * ) ( &( ( pxList )->xListEnd ) ) )
# 250 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
#define listLIST_IS_EMPTY(pxList) ( ( ( pxList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? pdTRUE : pdFALSE )




#define listCURRENT_LIST_LENGTH(pxList) ( ( pxList )->uxNumberOfItems )
# 277 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
#define listGET_OWNER_OF_NEXT_ENTRY(pxTCB,pxList) { List_t * const pxConstList = ( pxList ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxTCB ) = ( pxConstList )->pxIndex->pvOwner; }
# 307 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
#define listGET_OWNER_OF_HEAD_ENTRY(pxList) ( (&( ( pxList )->xListEnd ))->pxNext->pvOwner )
# 318 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
#define listIS_CONTAINED_WITHIN(pxList,pxListItem) ( ( ( pxListItem )->pxContainer == ( pxList ) ) ? ( pdTRUE ) : ( pdFALSE ) )







#define listLIST_ITEM_CONTAINER(pxListItem) ( ( pxListItem )->pxContainer )






#define listLIST_IS_INITIALISED(pxList) ( ( pxList )->xListEnd.xItemValue == portMAX_DELAY )
# 345 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h" 2
# 46 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
#define tskKERNEL_VERSION_NUMBER "V10.3.1"
#define tskKERNEL_VERSION_MAJOR 10
#define tskKERNEL_VERSION_MINOR 3
#define tskKERNEL_VERSION_BUILD 1



#define tskMPU_REGION_READ_ONLY ( 1UL << 0UL )
#define tskMPU_REGION_READ_WRITE ( 1UL << 1UL )
#define tskMPU_REGION_EXECUTE_NEVER ( 1UL << 2UL )
#define tskMPU_REGION_NORMAL_MEMORY ( 1UL << 3UL )
#define tskMPU_REGION_DEVICE_MEMORY ( 1UL << 4UL )
# 69 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
struct tskTaskControlBlock;
typedef struct tskTaskControlBlock* TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted,
 eInvalid
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint16_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;



typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint16_t usStackHighWaterMark;
} TaskStatus_t;


typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;






#define tskIDLE_PRIORITY ( ( UBaseType_t ) 0U )
# 173 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
#define taskYIELD() portYIELD()
# 187 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
#define taskENTER_CRITICAL() portENTER_CRITICAL()
#define taskENTER_CRITICAL_FROM_ISR() portSET_INTERRUPT_MASK_FROM_ISR()
# 202 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
#define taskEXIT_CRITICAL() portEXIT_CRITICAL()
#define taskEXIT_CRITICAL_FROM_ISR(x) portCLEAR_INTERRUPT_MASK_FROM_ISR( x )
# 212 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
#define taskDISABLE_INTERRUPTS() portDISABLE_INTERRUPTS()
# 222 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
#define taskENABLE_INTERRUPTS() portENABLE_INTERRUPTS()




#define taskSCHEDULER_SUSPENDED ( ( BaseType_t ) 0 )
#define taskSCHEDULER_NOT_STARTED ( ( BaseType_t ) 1 )
#define taskSCHEDULER_RUNNING ( ( BaseType_t ) 2 )
# 330 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 446 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
 TaskHandle_t xTaskCreateStatic( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         StackType_t * const puxStackBuffer,
         StaticTask_t * const pxTaskBuffer ) ;
# 665 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 706 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 758 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 817 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 847 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 894 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 920 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 976 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1018 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1069 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1118 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1147 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1180 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskStartScheduler( void ) ;
# 1236 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskEndScheduler( void ) ;
# 1287 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskSuspendAll( void ) ;
# 1341 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1356 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
TickType_t xTaskGetTickCount( void ) ;
# 1372 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1386 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1399 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1415 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1442 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1469 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;
# 1533 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1542 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1641 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
# 1688 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1742 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1772 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
uint32_t ulTaskGetIdleRunTimeCounter( void ) ;
# 1853 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
#define xTaskNotify(xTaskToNotify,ulValue,eAction) xTaskGenericNotify( ( xTaskToNotify ), ( ulValue ), ( eAction ), NULL )
#define xTaskNotifyAndQuery(xTaskToNotify,ulValue,eAction,pulPreviousNotifyValue) xTaskGenericNotify( ( xTaskToNotify ), ( ulValue ), ( eAction ), ( pulPreviousNotifyValue ) )
# 1944 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
#define xTaskNotifyFromISR(xTaskToNotify,ulValue,eAction,pxHigherPriorityTaskWoken) xTaskGenericNotifyFromISR( ( xTaskToNotify ), ( ulValue ), ( eAction ), NULL, ( pxHigherPriorityTaskWoken ) )
#define xTaskNotifyAndQueryFromISR(xTaskToNotify,ulValue,eAction,pulPreviousNotificationValue,pxHigherPriorityTaskWoken) xTaskGenericNotifyFromISR( ( xTaskToNotify ), ( ulValue ), ( eAction ), ( pulPreviousNotificationValue ), ( pxHigherPriorityTaskWoken ) )
# 2021 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2067 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
#define xTaskNotifyGive(xTaskToNotify) xTaskGenericNotify( ( xTaskToNotify ), ( 0 ), eIncrement, NULL )
# 2122 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2191 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2207 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2225 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
uint32_t ulTaskNotifyValueClear( TaskHandle_t xTask, uint32_t ulBitsToClear ) ;
# 2239 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 2322 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;
# 2343 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2376 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2390 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2416 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2427 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
 void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2472 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2493 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
# 2506 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
BaseType_t xTaskCatchUpTicks( TickType_t xTicksToCatchUp ) ;
# 2522 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 58 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h" 2
# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h" 1
# 30 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
#define TIMERS_H 







# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h" 1
# 39 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h" 2
# 54 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
#define tmrCOMMAND_EXECUTE_CALLBACK_FROM_ISR ( ( BaseType_t ) -2 )
#define tmrCOMMAND_EXECUTE_CALLBACK ( ( BaseType_t ) -1 )
#define tmrCOMMAND_START_DONT_TRACE ( ( BaseType_t ) 0 )
#define tmrCOMMAND_START ( ( BaseType_t ) 1 )
#define tmrCOMMAND_RESET ( ( BaseType_t ) 2 )
#define tmrCOMMAND_STOP ( ( BaseType_t ) 3 )
#define tmrCOMMAND_CHANGE_PERIOD ( ( BaseType_t ) 4 )
#define tmrCOMMAND_DELETE ( ( BaseType_t ) 5 )

#define tmrFIRST_FROM_ISR_COMMAND ( ( BaseType_t ) 6 )
#define tmrCOMMAND_START_FROM_ISR ( ( BaseType_t ) 6 )
#define tmrCOMMAND_RESET_FROM_ISR ( ( BaseType_t ) 7 )
#define tmrCOMMAND_STOP_FROM_ISR ( ( BaseType_t ) 8 )
#define tmrCOMMAND_CHANGE_PERIOD_FROM_ISR ( ( BaseType_t ) 9 )
# 76 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
struct tmrTimerControl;
typedef struct tmrTimerControl * TimerHandle_t;




typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );





typedef void (*PendedFunction_t)( void *, uint32_t );
# 228 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
 TimerHandle_t xTimerCreate( const char * const pcTimerName,
        const TickType_t xTimerPeriodInTicks,
        const UBaseType_t uxAutoReload,
        void * const pvTimerID,
        TimerCallbackFunction_t pxCallbackFunction ) ;
# 358 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
 TimerHandle_t xTimerCreateStatic( const char * const pcTimerName,
          const TickType_t xTimerPeriodInTicks,
          const UBaseType_t uxAutoReload,
          void * const pvTimerID,
          TimerCallbackFunction_t pxCallbackFunction,
          StaticTimer_t *pxTimerBuffer ) ;
# 386 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
void *pvTimerGetTimerID( const TimerHandle_t xTimer ) ;
# 407 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID ) ;
# 444 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;







TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;
# 504 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
#define xTimerStart(xTimer,xTicksToWait) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_START, ( xTaskGetTickCount() ), NULL, ( xTicksToWait ) )
# 546 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
#define xTimerStop(xTimer,xTicksToWait) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_STOP, 0U, NULL, ( xTicksToWait ) )
# 626 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
#define xTimerChangePeriod(xTimer,xNewPeriod,xTicksToWait) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_CHANGE_PERIOD, ( xNewPeriod ), NULL, ( xTicksToWait ) )
# 664 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
#define xTimerDelete(xTimer,xTicksToWait) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_DELETE, 0U, NULL, ( xTicksToWait ) )
# 788 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
#define xTimerReset(xTimer,xTicksToWait) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_RESET, ( xTaskGetTickCount() ), NULL, ( xTicksToWait ) )
# 874 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
#define xTimerStartFromISR(xTimer,pxHigherPriorityTaskWoken) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_START_FROM_ISR, ( xTaskGetTickCountFromISR() ), ( pxHigherPriorityTaskWoken ), 0U )
# 937 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
#define xTimerStopFromISR(xTimer,pxHigherPriorityTaskWoken) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_STOP_FROM_ISR, 0, ( pxHigherPriorityTaskWoken ), 0U )
# 1010 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
#define xTimerChangePeriodFromISR(xTimer,xNewPeriod,pxHigherPriorityTaskWoken) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_CHANGE_PERIOD_FROM_ISR, ( xNewPeriod ), ( pxHigherPriorityTaskWoken ), 0U )
# 1096 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
#define xTimerResetFromISR(xTimer,pxHigherPriorityTaskWoken) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_RESET_FROM_ISR, ( xTaskGetTickCountFromISR() ), ( pxHigherPriorityTaskWoken ), 0U )
# 1187 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 1221 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait ) ;
# 1232 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
const char * pcTimerGetName( TimerHandle_t xTimer ) ;
# 1249 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
void vTimerSetReloadMode( TimerHandle_t xTimer, const UBaseType_t uxAutoReload ) ;
# 1263 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
UBaseType_t uxTimerGetReloadMode( TimerHandle_t xTimer ) ;
# 1274 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;
# 1289 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;





BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) ;
# 59 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h" 2
# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h" 1
# 30 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
#define QUEUE_H 
# 47 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
struct QueueDefinition;
typedef struct QueueDefinition * QueueHandle_t;






typedef struct QueueDefinition * QueueSetHandle_t;






typedef struct QueueDefinition * QueueSetMemberHandle_t;


#define queueSEND_TO_BACK ( ( BaseType_t ) 0 )
#define queueSEND_TO_FRONT ( ( BaseType_t ) 1 )
#define queueOVERWRITE ( ( BaseType_t ) 2 )


#define queueQUEUE_TYPE_BASE ( ( uint8_t ) 0U )
#define queueQUEUE_TYPE_SET ( ( uint8_t ) 0U )
#define queueQUEUE_TYPE_MUTEX ( ( uint8_t ) 1U )
#define queueQUEUE_TYPE_COUNTING_SEMAPHORE ( ( uint8_t ) 2U )
#define queueQUEUE_TYPE_BINARY_SEMAPHORE ( ( uint8_t ) 3U )
#define queueQUEUE_TYPE_RECURSIVE_MUTEX ( ( uint8_t ) 4U )
# 146 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
#define xQueueCreate(uxQueueLength,uxItemSize) xQueueGenericCreate( ( uxQueueLength ), ( uxItemSize ), ( queueQUEUE_TYPE_BASE ) )
# 232 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
#define xQueueCreateStatic(uxQueueLength,uxItemSize,pucQueueStorage,pxQueueBuffer) xQueueGenericCreateStatic( ( uxQueueLength ), ( uxItemSize ), ( pucQueueStorage ), ( pxQueueBuffer ), ( queueQUEUE_TYPE_BASE ) )
# 313 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
#define xQueueSendToFront(xQueue,pvItemToQueue,xTicksToWait) xQueueGenericSend( ( xQueue ), ( pvItemToQueue ), ( xTicksToWait ), queueSEND_TO_FRONT )
# 395 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
#define xQueueSendToBack(xQueue,pvItemToQueue,xTicksToWait) xQueueGenericSend( ( xQueue ), ( pvItemToQueue ), ( xTicksToWait ), queueSEND_TO_BACK )
# 479 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
#define xQueueSend(xQueue,pvItemToQueue,xTicksToWait) xQueueGenericSend( ( xQueue ), ( pvItemToQueue ), ( xTicksToWait ), queueSEND_TO_BACK )
# 562 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
#define xQueueOverwrite(xQueue,pvItemToQueue) xQueueGenericSend( ( xQueue ), ( pvItemToQueue ), 0, queueOVERWRITE )
# 650 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 744 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 777 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 868 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 883 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 900 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 914 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 984 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
#define xQueueSendToFrontFromISR(xQueue,pvItemToQueue,pxHigherPriorityTaskWoken) xQueueGenericSendFromISR( ( xQueue ), ( pvItemToQueue ), ( pxHigherPriorityTaskWoken ), queueSEND_TO_FRONT )
# 1055 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
#define xQueueSendToBackFromISR(xQueue,pvItemToQueue,pxHigherPriorityTaskWoken) xQueueGenericSendFromISR( ( xQueue ), ( pvItemToQueue ), ( pxHigherPriorityTaskWoken ), queueSEND_TO_BACK )
# 1142 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
#define xQueueOverwriteFromISR(xQueue,pvItemToQueue,pxHigherPriorityTaskWoken) xQueueGenericSendFromISR( ( xQueue ), ( pvItemToQueue ), ( pxHigherPriorityTaskWoken ), queueOVERWRITE )
# 1216 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
#define xQueueSendFromISR(xQueue,pvItemToQueue,pxHigherPriorityTaskWoken) xQueueGenericSendFromISR( ( xQueue ), ( pvItemToQueue ), ( pxHigherPriorityTaskWoken ), queueSEND_TO_BACK )
# 1295 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1385 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;





BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1404 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
TaskHandle_t xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
TaskHandle_t xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t xMutex ) ;





#define xQueueReset(xQueue) xQueueGenericReset( xQueue, pdFALSE )
# 1458 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
 void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcQueueName ) ;
# 1472 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
 void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;
# 1487 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
 const char *pcQueueGetName( QueueHandle_t xQueue ) ;
# 1496 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1505 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
 QueueHandle_t xQueueGenericCreateStatic( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, StaticQueue_t *pxStaticQueue, const uint8_t ucQueueType ) ;
# 1556 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1580 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1599 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1635 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;


void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 60 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h" 2
# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h" 1
# 29 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define SEMAPHORE_H 





# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h" 1
# 36 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;

#define semBINARY_SEMAPHORE_QUEUE_LENGTH ( ( uint8_t ) 1U )
#define semSEMAPHORE_QUEUE_ITEM_LENGTH ( ( uint8_t ) 0U )
#define semGIVE_BLOCK_TIME ( ( TickType_t ) 0U )
# 94 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define vSemaphoreCreateBinary(xSemaphore) { ( xSemaphore ) = xQueueGenericCreate( ( UBaseType_t ) 1, semSEMAPHORE_QUEUE_ITEM_LENGTH, queueQUEUE_TYPE_BINARY_SEMAPHORE ); if( ( xSemaphore ) != NULL ) { ( void ) xSemaphoreGive( ( xSemaphore ) ); } }
# 162 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define xSemaphoreCreateBinary() xQueueGenericCreate( ( UBaseType_t ) 1, semSEMAPHORE_QUEUE_ITEM_LENGTH, queueQUEUE_TYPE_BINARY_SEMAPHORE )
# 221 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define xSemaphoreCreateBinaryStatic(pxStaticSemaphore) xQueueGenericCreateStatic( ( UBaseType_t ) 1, semSEMAPHORE_QUEUE_ITEM_LENGTH, NULL, pxStaticSemaphore, queueQUEUE_TYPE_BINARY_SEMAPHORE )
# 289 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define xSemaphoreTake(xSemaphore,xBlockTime) xQueueSemaphoreTake( ( xSemaphore ), ( xBlockTime ) )
# 447 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define xSemaphoreGive(xSemaphore) xQueueGenericSend( ( QueueHandle_t ) ( xSemaphore ), NULL, semGIVE_BLOCK_TIME, queueSEND_TO_BACK )
# 624 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define xSemaphoreGiveFromISR(xSemaphore,pxHigherPriorityTaskWoken) xQueueGiveFromISR( ( QueueHandle_t ) ( xSemaphore ), ( pxHigherPriorityTaskWoken ) )
# 658 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define xSemaphoreTakeFromISR(xSemaphore,pxHigherPriorityTaskWoken) xQueueReceiveFromISR( ( QueueHandle_t ) ( xSemaphore ), NULL, ( pxHigherPriorityTaskWoken ) )
# 716 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define xSemaphoreCreateMutex() xQueueCreateMutex( queueQUEUE_TYPE_MUTEX )
# 777 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define xSemaphoreCreateMutexStatic(pxMutexBuffer) xQueueCreateMutexStatic( queueQUEUE_TYPE_MUTEX, ( pxMutexBuffer ) )
# 998 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define xSemaphoreCreateCounting(uxMaxCount,uxInitialCount) xQueueCreateCountingSemaphore( ( uxMaxCount ), ( uxInitialCount ) )
# 1083 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define xSemaphoreCreateCountingStatic(uxMaxCount,uxInitialCount,pxSemaphoreBuffer) xQueueCreateCountingSemaphoreStatic( ( uxMaxCount ), ( uxInitialCount ), ( pxSemaphoreBuffer ) )
# 1098 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define vSemaphoreDelete(xSemaphore) vQueueDelete( ( QueueHandle_t ) ( xSemaphore ) )
# 1113 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define xSemaphoreGetMutexHolder(xSemaphore) xQueueGetMutexHolder( ( xSemaphore ) )
# 1124 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define xSemaphoreGetMutexHolderFromISR(xSemaphore) xQueueGetMutexHolderFromISR( ( xSemaphore ) )
# 1136 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"
#define uxSemaphoreGetCount(xSemaphore) uxQueueMessagesWaiting( ( QueueHandle_t ) ( xSemaphore ) )
# 61 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h" 2
# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h" 1
# 29 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
#define EVENT_GROUPS_H 






# 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h" 1
# 37 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h" 2
# 81 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
struct EventGroupDef_t;
typedef struct EventGroupDef_t * EventGroupHandle_t;
# 92 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
typedef TickType_t EventBits_t;
# 147 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
 EventGroupHandle_t xEventGroupCreate( void ) ;
# 200 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
 EventGroupHandle_t xEventGroupCreateStatic( StaticEventGroup_t *pxEventGroupBuffer ) ;
# 295 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
EventBits_t xEventGroupWaitBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToWaitFor, const BaseType_t xClearOnExit, const BaseType_t xWaitForAllBits, TickType_t xTicksToWait ) ;
# 352 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
EventBits_t xEventGroupClearBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear ) ;
# 410 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
#define xEventGroupClearBitsFromISR(xEventGroup,uxBitsToClear) xTimerPendFunctionCallFromISR( vEventGroupClearBitsCallback, ( void * ) xEventGroup, ( uint32_t ) uxBitsToClear, NULL )
# 485 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
EventBits_t xEventGroupSetBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet ) ;
# 562 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
#define xEventGroupSetBitsFromISR(xEventGroup,uxBitsToSet,pxHigherPriorityTaskWoken) xTimerPendFunctionCallFromISR( vEventGroupSetBitsCallback, ( void * ) xEventGroup, ( uint32_t ) uxBitsToSet, pxHigherPriorityTaskWoken )
# 689 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
EventBits_t xEventGroupSync( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, const EventBits_t uxBitsToWaitFor, TickType_t xTicksToWait ) ;
# 708 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
#define xEventGroupGetBits(xEventGroup) xEventGroupClearBits( xEventGroup, 0 )
# 725 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
EventBits_t xEventGroupGetBitsFromISR( EventGroupHandle_t xEventGroup ) ;
# 739 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"
void vEventGroupDelete( EventGroupHandle_t xEventGroup ) ;


void vEventGroupSetBitsCallback( void *pvEventGroup, const uint32_t ulBitsToSet ) ;
void vEventGroupClearBitsCallback( void *pvEventGroup, const uint32_t ulBitsToClear ) ;
# 62 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h" 2
# 141 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define _CMSIS_OS_H 


#define osCMSIS 0x10002


#define osCMSIS_KERNEL 0x10000


#define osKernelSystemId "KERNEL V1.00"


#define osFeature_MainThread 1
#define osFeature_Pool 1
#define osFeature_MailQ 1
#define osFeature_MessageQ 1
#define osFeature_Signals 8
#define osFeature_Semaphore 1
#define osFeature_Wait 0
#define osFeature_SysTick 1
# 172 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
typedef enum {
  osPriorityIdle = -3,
  osPriorityLow = -2,
  osPriorityBelowNormal = -1,
  osPriorityNormal = 0,
  osPriorityAboveNormal = +1,
  osPriorityHigh = +2,
  osPriorityRealtime = +3,
  osPriorityError = 0x84
} osPriority;



#define osWaitForever 0xFFFFFFFF



typedef enum {
  osOK = 0,
  osEventSignal = 0x08,
  osEventMessage = 0x10,
  osEventMail = 0x20,
  osEventTimeout = 0x40,
  osErrorParameter = 0x80,
  osErrorResource = 0x81,
  osErrorTimeoutResource = 0xC1,
  osErrorISR = 0x82,
  osErrorISRRecursive = 0x83,
  osErrorPriority = 0x84,
  osErrorNoMemory = 0x85,
  osErrorValue = 0x86,
  osErrorOS = 0xFF,
  os_status_reserved = 0x7FFFFFFF
} osStatus;
# 221 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
typedef enum {
  osTimerOnce = 0,
  osTimerPeriodic = 1
} os_timer_type;



typedef void (*os_pthread) (void const *argument);



typedef void (*os_ptimer) (void const *argument);





typedef TaskHandle_t osThreadId;



typedef TimerHandle_t osTimerId;



typedef SemaphoreHandle_t osMutexId;



typedef SemaphoreHandle_t osSemaphoreId;



typedef struct os_pool_cb *osPoolId;



typedef QueueHandle_t osMessageQId;



typedef struct os_mailQ_cb *osMailQId;




typedef StaticTask_t osStaticThreadDef_t;
typedef StaticTimer_t osStaticTimerDef_t;
typedef StaticSemaphore_t osStaticMutexDef_t;
typedef StaticSemaphore_t osStaticSemaphoreDef_t;
typedef StaticQueue_t osStaticMessageQDef_t;
# 280 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
typedef struct os_thread_def {
  char *name;
  os_pthread pthread;
  osPriority tpriority;
  uint32_t instances;
  uint32_t stacksize;

  uint32_t *buffer;
  osStaticThreadDef_t *controlblock;

} osThreadDef_t;



typedef struct os_timer_def {
  os_ptimer ptimer;

  osStaticTimerDef_t *controlblock;

} osTimerDef_t;



typedef struct os_mutex_def {
  uint32_t dummy;

  osStaticMutexDef_t *controlblock;

} osMutexDef_t;



typedef struct os_semaphore_def {
  uint32_t dummy;

  osStaticSemaphoreDef_t *controlblock;

} osSemaphoreDef_t;



typedef struct os_pool_def {
  uint32_t pool_sz;
  uint32_t item_sz;
  void *pool;
} osPoolDef_t;



typedef struct os_messageQ_def {
  uint32_t queue_sz;
  uint32_t item_sz;

  uint8_t *buffer;
  osStaticMessageQDef_t *controlblock;


} osMessageQDef_t;



typedef struct os_mailQ_def {
  uint32_t queue_sz;
  uint32_t item_sz;
  struct os_mailQ_cb **cb;
} osMailQDef_t;




typedef struct {
  osStatus status;
  union {
    uint32_t v;
    void *p;
    int32_t signals;
  } value;
  union {
    osMailQId mail_id;
    osMessageQId message_id;
  } def;
} osEvent;







osStatus osKernelInitialize (void);




osStatus osKernelStart (void);




int32_t osKernelRunning(void);






uint32_t osKernelSysTick (void);



#define osKernelSysTickFrequency (configTICK_RATE_HZ)




#define osKernelSysTickMicroSec(microsec) (((uint64_t)microsec * (osKernelSysTickFrequency)) / 1000000)
# 414 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osThreadDef(name,thread,priority,instances,stacksz) const osThreadDef_t os_thread_def_ ##name = { #name, (thread), (priority), (instances), (stacksz), NULL, NULL }



#define osThreadStaticDef(name,thread,priority,instances,stacksz,buffer,control) const osThreadDef_t os_thread_def_ ##name = { #name, (thread), (priority), (instances), (stacksz), (buffer), (control) }
# 433 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osThread(name) &os_thread_def_ ##name







osThreadId osThreadCreate (const osThreadDef_t *thread_def, void *argument);




osThreadId osThreadGetId (void);





osStatus osThreadTerminate (osThreadId thread_id);




osStatus osThreadYield (void);






osStatus osThreadSetPriority (osThreadId thread_id, osPriority priority);





osPriority osThreadGetPriority (osThreadId thread_id);







osStatus osDelay (uint32_t millisec);
# 503 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osTimerDef(name,function) const osTimerDef_t os_timer_def_ ##name = { (function), NULL }



#define osTimerStaticDef(name,function,control) const osTimerDef_t os_timer_def_ ##name = { (function), (control) }
# 521 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osTimer(name) &os_timer_def_ ##name
# 530 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
osTimerId osTimerCreate (const osTimerDef_t *timer_def, os_timer_type type, void *argument);






osStatus osTimerStart (osTimerId timer_id, uint32_t millisec);





osStatus osTimerStop (osTimerId timer_id);





osStatus osTimerDelete (osTimerId timer_id);
# 559 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
int32_t osSignalSet (osThreadId thread_id, int32_t signals);






int32_t osSignalClear (osThreadId thread_id, int32_t signals);






osEvent osSignalWait (int32_t signals, uint32_t millisec);
# 588 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osMutexDef(name) const osMutexDef_t os_mutex_def_ ##name = { 0, NULL }


#define osMutexStaticDef(name,control) const osMutexDef_t os_mutex_def_ ##name = { 0, (control) }
# 605 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osMutex(name) &os_mutex_def_ ##name






osMutexId osMutexCreate (const osMutexDef_t *mutex_def);






osStatus osMutexWait (osMutexId mutex_id, uint32_t millisec);





osStatus osMutexRelease (osMutexId mutex_id);





osStatus osMutexDelete (osMutexId mutex_id);
# 648 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osSemaphoreDef(name) const osSemaphoreDef_t os_semaphore_def_ ##name = { 0, NULL }


#define osSemaphoreStaticDef(name,control) const osSemaphoreDef_t os_semaphore_def_ ##name = { 0, (control) }
# 664 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osSemaphore(name) &os_semaphore_def_ ##name







osSemaphoreId osSemaphoreCreate (const osSemaphoreDef_t *semaphore_def, int32_t count);






int32_t osSemaphoreWait (osSemaphoreId semaphore_id, uint32_t millisec);





osStatus osSemaphoreRelease (osSemaphoreId semaphore_id);





osStatus osSemaphoreDelete (osSemaphoreId semaphore_id);
# 710 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osPoolDef(name,no,type) const osPoolDef_t os_pool_def_ ##name = { (no), sizeof(type), NULL }
# 719 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osPool(name) &os_pool_def_ ##name






osPoolId osPoolCreate (const osPoolDef_t *pool_def);





void *osPoolAlloc (osPoolId pool_id);





void *osPoolCAlloc (osPoolId pool_id);






osStatus osPoolFree (osPoolId pool_id, void *block);
# 765 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osMessageQDef(name,queue_sz,type) const osMessageQDef_t os_messageQ_def_ ##name = { (queue_sz), sizeof (type), NULL, NULL }



#define osMessageQStaticDef(name,queue_sz,type,buffer,control) const osMessageQDef_t os_messageQ_def_ ##name = { (queue_sz), sizeof (type) , (buffer), (control)}
# 784 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osMessageQ(name) &os_messageQ_def_ ##name







osMessageQId osMessageCreate (const osMessageQDef_t *queue_def, osThreadId thread_id);







osStatus osMessagePut (osMessageQId queue_id, uint32_t info, uint32_t millisec);






osEvent osMessageGet (osMessageQId queue_id, uint32_t millisec);
# 827 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osMailQDef(name,queue_sz,type) struct os_mailQ_cb *os_mailQ_cb_ ##name; const osMailQDef_t os_mailQ_def_ ##name = { (queue_sz), sizeof (type), (&os_mailQ_cb_ ##name) }
# 837 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#define osMailQ(name) &os_mailQ_def_ ##name







osMailQId osMailCreate (const osMailQDef_t *queue_def, osThreadId thread_id);






void *osMailAlloc (osMailQId queue_id, uint32_t millisec);






void *osMailCAlloc (osMailQId queue_id, uint32_t millisec);






osStatus osMailPut (osMailQId queue_id, void *mail);






osEvent osMailGet (osMailQId queue_id, uint32_t millisec);






osStatus osMailFree (osMailQId queue_id, void *mail);
# 890 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
void osSystickHandler(void);
# 917 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
osStatus osThreadSuspend (osThreadId thread_id);






osStatus osThreadResume (osThreadId thread_id);





osStatus osThreadSuspendAll (void);





osStatus osThreadResumeAll (void);
# 946 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
osStatus osDelayUntil (uint32_t *PreviousWakeTime, uint32_t millisec);






osStatus osAbortDelay(osThreadId thread_id);
# 962 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
osStatus osThreadList (uint8_t *buffer);







osEvent osMessagePeek (osMessageQId queue_id, uint32_t millisec);






uint32_t osMessageWaiting(osMessageQId queue_id);






uint32_t osMessageAvailableSpace(osMessageQId queue_id);






osStatus osMessageDelete (osMessageQId queue_id);






osMutexId osRecursiveMutexCreate (const osMutexDef_t *mutex_def);






osStatus osRecursiveMutexRelease (osMutexId mutex_id);







osStatus osRecursiveMutexWait (osMutexId mutex_id, uint32_t millisec);






uint32_t osSemaphoreGetCount(osSemaphoreId semaphore_id);
# 58 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 2
# 75 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
#define __ASM __asm
#define __INLINE inline
#define __STATIC_INLINE static inline

# 1 "../Drivers/CMSIS/Include/cmsis_gcc.h" 1
# 26 "../Drivers/CMSIS/Include/cmsis_gcc.h"
#define __CMSIS_GCC_H 


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wsign-conversion"
#pragma GCC diagnostic ignored "-Wconversion"
#pragma GCC diagnostic ignored "-Wunused-parameter"
# 50 "../Drivers/CMSIS/Include/cmsis_gcc.h"
#define __STATIC_FORCEINLINE __attribute__((always_inline)) static inline


#define __NO_RETURN __attribute__((__noreturn__))


#define __USED __attribute__((used))


#define __WEAK __attribute__((weak))


#define __PACKED __attribute__((packed, aligned(1)))


#define __PACKED_STRUCT struct __attribute__((packed, aligned(1)))


#define __PACKED_UNION union __attribute__((packed, aligned(1)))


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpacked"
#pragma GCC diagnostic ignored "-Wattributes"
  struct __attribute__((packed)) T_UINT32 { uint32_t v; };
#pragma GCC diagnostic pop
#define __UNALIGNED_UINT32(x) (((struct T_UINT32 *)(x))->v)


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpacked"
#pragma GCC diagnostic ignored "-Wattributes"
  struct __attribute__((packed, aligned(1))) T_UINT16_WRITE { uint16_t v; };
#pragma GCC diagnostic pop
#define __UNALIGNED_UINT16_WRITE(addr,val) (void)((((struct T_UINT16_WRITE *)(void *)(addr))->v) = (val))


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpacked"
#pragma GCC diagnostic ignored "-Wattributes"
  struct __attribute__((packed, aligned(1))) T_UINT16_READ { uint16_t v; };
#pragma GCC diagnostic pop
#define __UNALIGNED_UINT16_READ(addr) (((const struct T_UINT16_READ *)(const void *)(addr))->v)


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpacked"
#pragma GCC diagnostic ignored "-Wattributes"
  struct __attribute__((packed, aligned(1))) T_UINT32_WRITE { uint32_t v; };
#pragma GCC diagnostic pop
#define __UNALIGNED_UINT32_WRITE(addr,val) (void)((((struct T_UINT32_WRITE *)(void *)(addr))->v) = (val))


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpacked"
#pragma GCC diagnostic ignored "-Wattributes"
  struct __attribute__((packed, aligned(1))) T_UINT32_READ { uint32_t v; };
#pragma GCC diagnostic pop
#define __UNALIGNED_UINT32_READ(addr) (((const struct T_UINT32_READ *)(const void *)(addr))->v)


#define __ALIGNED(x) __attribute__((aligned(x)))


#define __RESTRICT __restrict


#define __COMPILER_BARRIER() __ASM volatile("":::"memory")
# 131 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline __attribute__((__noreturn__)) void __cmsis_start(void)
{
  extern void _start(void) __attribute__((__noreturn__));

  typedef struct {
    uint32_t const* src;
    uint32_t* dest;
    uint32_t wlen;
  } __copy_table_t;

  typedef struct {
    uint32_t* dest;
    uint32_t wlen;
  } __zero_table_t;

  extern const __copy_table_t __copy_table_start__;
  extern const __copy_table_t __copy_table_end__;
  extern const __zero_table_t __zero_table_start__;
  extern const __zero_table_t __zero_table_end__;

  for (__copy_table_t const* pTable = &__copy_table_start__; pTable < &__copy_table_end__; ++pTable) {
    for(uint32_t i=0u; i<pTable->wlen; ++i) {
      pTable->dest[i] = pTable->src[i];
    }
  }

  for (__zero_table_t const* pTable = &__zero_table_start__; pTable < &__zero_table_end__; ++pTable) {
    for(uint32_t i=0u; i<pTable->wlen; ++i) {
      pTable->dest[i] = 0u;
    }
  }

  _start();
}

#define __PROGRAM_START __cmsis_start



#define __INITIAL_SP __StackTop



#define __STACK_LIMIT __StackLimit



#define __VECTOR_TABLE __Vectors



#define __VECTOR_TABLE_ATTRIBUTE __attribute((used, section(".vectors")))
# 196 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __enable_irq(void)
{
  __asm volatile ("cpsie i" : : : "memory");
}







__attribute__((always_inline)) static inline void __disable_irq(void)
{
  __asm volatile ("cpsid i" : : : "memory");
}







__attribute__((always_inline)) static inline uint32_t __get_CONTROL(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, control" : "=r" (result) );
  return(result);
}
# 248 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_CONTROL(uint32_t control)
{
  __asm volatile ("MSR control, %0" : : "r" (control) : "memory");
}
# 272 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __get_IPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, ipsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static inline uint32_t __get_APSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, apsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static inline uint32_t __get_xPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, xpsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static inline uint32_t __get_PSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, psp" : "=r" (result) );
  return(result);
}
# 344 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_PSP(uint32_t topOfProcStack)
{
  __asm volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
}
# 368 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __get_MSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, msp" : "=r" (result) );
  return(result);
}
# 398 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_MSP(uint32_t topOfMainStack)
{
  __asm volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
}
# 449 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __get_PRIMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, primask" : "=r" (result) :: "memory");
  return(result);
}
# 479 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_PRIMASK(uint32_t priMask)
{
  __asm volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
}
# 506 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __enable_fault_irq(void)
{
  __asm volatile ("cpsie f" : : : "memory");
}







__attribute__((always_inline)) static inline void __disable_fault_irq(void)
{
  __asm volatile ("cpsid f" : : : "memory");
}







__attribute__((always_inline)) static inline uint32_t __get_BASEPRI(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, basepri" : "=r" (result) );
  return(result);
}
# 558 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_BASEPRI(uint32_t basePri)
{
  __asm volatile ("MSR basepri, %0" : : "r" (basePri) : "memory");
}
# 583 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  __asm volatile ("MSR basepri_max, %0" : : "r" (basePri) : "memory");
}







__attribute__((always_inline)) static inline uint32_t __get_FAULTMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, faultmask" : "=r" (result) );
  return(result);
}
# 624 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __set_FAULTMASK(uint32_t faultMask)
{
  __asm volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
}
# 833 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __get_FPSCR(void)
{
# 849 "../Drivers/CMSIS/Include/cmsis_gcc.h"
  return(0U);

}







__attribute__((always_inline)) static inline void __set_FPSCR(uint32_t fpscr)
{
# 872 "../Drivers/CMSIS/Include/cmsis_gcc.h"
  (void)fpscr;

}
# 894 "../Drivers/CMSIS/Include/cmsis_gcc.h"
#define __CMSIS_GCC_OUT_REG(r) "=r" (r)
#define __CMSIS_GCC_RW_REG(r) "+r" (r)
#define __CMSIS_GCC_USE_REG(r) "r" (r)






#define __NOP() __ASM volatile ("nop")





#define __WFI() __ASM volatile ("wfi")







#define __WFE() __ASM volatile ("wfe")






#define __SEV() __ASM volatile ("sev")
# 933 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __ISB(void)
{
  __asm volatile ("isb 0xF":::"memory");
}







__attribute__((always_inline)) static inline void __DSB(void)
{
  __asm volatile ("dsb 0xF":::"memory");
}







__attribute__((always_inline)) static inline void __DMB(void)
{
  __asm volatile ("dmb 0xF":::"memory");
}
# 967 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __REV(uint32_t value)
{

  return __builtin_bswap32(value);






}
# 986 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __REV16(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rev16 %0, %1" : "=r" (result) : "r" (value) );
  return result;
}
# 1001 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline int16_t __REVSH(int16_t value)
{

  return (int16_t)__builtin_bswap16(value);






}
# 1021 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  op2 %= 32U;
  if (op2 == 0U)
  {
    return op1;
  }
  return (op1 >> op2) | (op1 << (32U - op2));
}
# 1039 "../Drivers/CMSIS/Include/cmsis_gcc.h"
#define __BKPT(value) __ASM volatile ("bkpt "#value)
# 1048 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __RBIT(uint32_t value)
{
  uint32_t result;




   __asm volatile ("rbit %0, %1" : "=r" (result) : "r" (value) );
# 1068 "../Drivers/CMSIS/Include/cmsis_gcc.h"
  return result;
}
# 1078 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint8_t __CLZ(uint32_t value)
{
# 1089 "../Drivers/CMSIS/Include/cmsis_gcc.h"
  if (value == 0U)
  {
    return 32U;
  }
  return __builtin_clz(value);
}
# 1107 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint8_t __LDREXB(volatile uint8_t *addr)
{
    uint32_t result;


   __asm volatile ("ldrexb %0, %1" : "=r" (result) : "Q" (*addr) );






   return ((uint8_t) result);
}
# 1129 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint16_t __LDREXH(volatile uint16_t *addr)
{
    uint32_t result;


   __asm volatile ("ldrexh %0, %1" : "=r" (result) : "Q" (*addr) );






   return ((uint16_t) result);
}
# 1151 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __LDREXW(volatile uint32_t *addr)
{
    uint32_t result;

   __asm volatile ("ldrex %0, %1" : "=r" (result) : "Q" (*addr) );
   return(result);
}
# 1168 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STREXB(uint8_t value, volatile uint8_t *addr)
{
   uint32_t result;

   __asm volatile ("strexb %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" ((uint32_t)value) );
   return(result);
}
# 1185 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STREXH(uint16_t value, volatile uint16_t *addr)
{
   uint32_t result;

   __asm volatile ("strexh %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" ((uint32_t)value) );
   return(result);
}
# 1202 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STREXW(uint32_t value, volatile uint32_t *addr)
{
   uint32_t result;

   __asm volatile ("strex %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" (value) );
   return(result);
}






__attribute__((always_inline)) static inline void __CLREX(void)
{
  __asm volatile ("clrex" ::: "memory");
}
# 1236 "../Drivers/CMSIS/Include/cmsis_gcc.h"
#define __SSAT(ARG1,ARG2) __extension__ ({ int32_t __RES, __ARG1 = (ARG1); __ASM ("ssat %0, %1, %2" : "=r" (__RES) : "I" (ARG2), "r" (__ARG1) ); __RES; })
# 1252 "../Drivers/CMSIS/Include/cmsis_gcc.h"
#define __USAT(ARG1,ARG2) __extension__ ({ uint32_t __RES, __ARG1 = (ARG1); __ASM ("usat %0, %1, %2" : "=r" (__RES) : "I" (ARG2), "r" (__ARG1) ); __RES; })
# 1268 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __RRX(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rrx %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 1283 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint8_t __LDRBT(volatile uint8_t *ptr)
{
    uint32_t result;


   __asm volatile ("ldrbt %0, %1" : "=r" (result) : "Q" (*ptr) );






   return ((uint8_t) result);
}
# 1305 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint16_t __LDRHT(volatile uint16_t *ptr)
{
    uint32_t result;


   __asm volatile ("ldrht %0, %1" : "=r" (result) : "Q" (*ptr) );






   return ((uint16_t) result);
}
# 1327 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __LDRT(volatile uint32_t *ptr)
{
    uint32_t result;

   __asm volatile ("ldrt %0, %1" : "=r" (result) : "Q" (*ptr) );
   return(result);
}
# 1342 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STRBT(uint8_t value, volatile uint8_t *ptr)
{
   __asm volatile ("strbt %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 1354 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STRHT(uint16_t value, volatile uint16_t *ptr)
{
   __asm volatile ("strht %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 1366 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STRT(uint32_t value, volatile uint32_t *ptr)
{
   __asm volatile ("strt %1, %0" : "=Q" (*ptr) : "r" (value) );
}
# 1621 "../Drivers/CMSIS/Include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __SADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __QADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SHADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UQADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UHADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}


__attribute__((always_inline)) static inline uint32_t __SSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __QSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SHSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __USUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UQSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UHSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}


__attribute__((always_inline)) static inline uint32_t __SADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __QADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SHADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UQADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UHADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __QSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SHSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __USUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UQSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UHSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __QASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SHASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UQASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UHASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __QSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SHSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __USAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UQSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UHSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __USAD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usad8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __USADA8(uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("usada8 %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

#define __SSAT16(ARG1,ARG2) ({ int32_t __RES, __ARG1 = (ARG1); __ASM ("ssat16 %0, %1, %2" : "=r" (__RES) : "I" (ARG2), "r" (__ARG1) ); __RES; })






#define __USAT16(ARG1,ARG2) ({ uint32_t __RES, __ARG1 = (ARG1); __ASM ("usat16 %0, %1, %2" : "=r" (__RES) : "I" (ARG2), "r" (__ARG1) ); __RES; })






__attribute__((always_inline)) static inline uint32_t __UXTB16(uint32_t op1)
{
  uint32_t result;

  __asm volatile ("uxtb16 %0, %1" : "=r" (result) : "r" (op1));
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __UXTAB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SXTB16(uint32_t op1)
{
  uint32_t result;

  __asm volatile ("sxtb16 %0, %1" : "=r" (result) : "r" (op1));
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SXTAB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMUAD (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smuad %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMUADX (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smuadx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMLAD (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlad %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMLADX (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smladx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__((always_inline)) static inline uint64_t __SMLALD (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlald %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__((always_inline)) static inline uint64_t __SMLALDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlaldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__((always_inline)) static inline uint32_t __SMUSD (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smusd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMUSDX (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smusdx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMLSD (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlsd %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__((always_inline)) static inline uint32_t __SMLSDX (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlsdx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__((always_inline)) static inline uint64_t __SMLSLD (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlsld %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__((always_inline)) static inline uint64_t __SMLSLDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlsldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__((always_inline)) static inline uint32_t __SEL (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sel %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline int32_t __QADD( int32_t op1, int32_t op2)
{
  int32_t result;

  __asm volatile ("qadd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__((always_inline)) static inline int32_t __QSUB( int32_t op1, int32_t op2)
{
  int32_t result;

  __asm volatile ("qsub %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}
# 2148 "../Drivers/CMSIS/Include/cmsis_gcc.h"
#define __PKHBT(ARG1,ARG2,ARG3) ( ((((uint32_t)(ARG1)) ) & 0x0000FFFFUL) | ((((uint32_t)(ARG2)) << (ARG3)) & 0xFFFF0000UL) )


#define __PKHTB(ARG1,ARG2,ARG3) ( ((((uint32_t)(ARG1)) ) & 0xFFFF0000UL) | ((((uint32_t)(ARG2)) >> (ARG3)) & 0x0000FFFFUL) )


__attribute__((always_inline)) static inline int32_t __SMMLA (int32_t op1, int32_t op2, int32_t op3)
{
 int32_t result;

 __asm volatile ("smmla %0, %1, %2, %3" : "=r" (result): "r" (op1), "r" (op2), "r" (op3) );
 return(result);
}





#pragma GCC diagnostic pop
# 80 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 2
# 100 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
extern void SysTick_Handler(void);


static unsigned long makeFreeRtosPriority (osPriority priority)
{
  unsigned long fpriority = ( ( UBaseType_t ) 0U );

  if (priority != osPriorityError) {
    fpriority += (priority - osPriorityIdle);
  }

  return fpriority;
}



static osPriority makeCmsisPriority (unsigned long fpriority)
{
  osPriority priority = osPriorityError;

  if ((fpriority - ( ( UBaseType_t ) 0U )) <= (osPriorityRealtime - osPriorityIdle)) {
    priority = (osPriority)((int)osPriorityIdle + (int)(fpriority - ( ( UBaseType_t ) 0U )));
  }

  return priority;
}




static int inHandlerMode (void)
{
  return __get_IPSR() != 0;
}







osStatus osKernelInitialize (void);
# 150 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osStatus osKernelStart (void)
{
  vTaskStartScheduler();

  return osOK;
}
# 165 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
int32_t osKernelRunning(void)
{

  if (xTaskGetSchedulerState() == ( ( BaseType_t ) 1 ))
    return 0;
  else
    return 1;



}
# 184 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
uint32_t osKernelSysTick(void)
{
  if (inHandlerMode()) {
    return xTaskGetTickCountFromISR();
  }
  else {
    return xTaskGetTickCount();
  }
}
# 202 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osThreadId osThreadCreate (const osThreadDef_t *thread_def, void *argument)
{
  TaskHandle_t handle;


  if((thread_def->buffer != 
# 207 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                           ((void *)0)
# 207 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                               ) && (thread_def->controlblock != 
# 207 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                                                                 ((void *)0)
# 207 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                                                                     )) {
    handle = xTaskCreateStatic((TaskFunction_t)thread_def->pthread,(const char *)thread_def->name,
              thread_def->stacksize, argument, makeFreeRtosPriority(thread_def->tpriority),
              thread_def->buffer, thread_def->controlblock);
  }
  else {
    if (xTaskCreate((TaskFunction_t)thread_def->pthread,(const char *)thread_def->name,
              thread_def->stacksize, argument, makeFreeRtosPriority(thread_def->tpriority),
              &handle) != ( ( ( BaseType_t ) 1 ) )) {
      return 
# 216 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
            ((void *)0)
# 216 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                ;
    }
  }
# 232 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
  return handle;
}






osThreadId osThreadGetId (void)
{

  return xTaskGetCurrentTaskHandle();



}







osStatus osThreadTerminate (osThreadId thread_id)
{

  vTaskDelete(thread_id);
  return osOK;



}






osStatus osThreadYield (void)
{
  { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };

  return osOK;
}
# 284 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osStatus osThreadSetPriority (osThreadId thread_id, osPriority priority)
{

  vTaskPrioritySet(thread_id, makeFreeRtosPriority(priority));
  return osOK;



}







osPriority osThreadGetPriority (osThreadId thread_id)
{

  if (inHandlerMode())
  {
    return makeCmsisPriority(uxTaskPriorityGetFromISR(thread_id));
  }
  else
  {
    return makeCmsisPriority(uxTaskPriorityGet(thread_id));
  }



}







osStatus osDelay (uint32_t millisec)
{

  TickType_t ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );

  vTaskDelay(ticks ? ticks : 1);

  return osOK;





}
# 357 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osTimerId osTimerCreate (const osTimerDef_t *timer_def, os_timer_type type, void *argument)
{



  if(timer_def->controlblock != 
# 362 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                               ((void *)0)
# 362 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                                   ) {
    return xTimerCreateStatic((const char *)"",
                      1,
                      (type == osTimerPeriodic) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ),
                      (void *) argument,
                      (TimerCallbackFunction_t)timer_def->ptimer,
                      (StaticTimer_t *)timer_def->controlblock);
  }
  else {
    return xTimerCreate((const char *)"",
                      1,
                      (type == osTimerPeriodic) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ),
                      (void *) argument,
                      (TimerCallbackFunction_t)timer_def->ptimer);
 }
# 395 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
}
# 404 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osStatus osTimerStart (osTimerId timer_id, uint32_t millisec)
{
  osStatus result = osOK;

  long taskWoken = ( ( BaseType_t ) 0 );
  TickType_t ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );

  if (ticks == 0)
    ticks = 1;

  if (inHandlerMode())
  {
    if (xTimerGenericCommand( ( timer_id ), ( ( BaseType_t ) 9 ), ( ticks ), ( &taskWoken ), 0U ) != ( ( ( BaseType_t ) 1 ) ))
    {
      result = osErrorOS;
    }
    else
    {
      if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };
    }
  }
  else
  {
    if (xTimerGenericCommand( ( timer_id ), ( ( BaseType_t ) 4 ), ( ticks ), 
# 427 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
       ((void *)0)
# 427 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
       , ( 0 ) ) != ( ( ( BaseType_t ) 1 ) ))
      result = osErrorOS;
  }




  return result;
}







osStatus osTimerStop (osTimerId timer_id)
{
  osStatus result = osOK;

  long taskWoken = ( ( BaseType_t ) 0 );

  if (inHandlerMode()) {
    if (xTimerGenericCommand( ( timer_id ), ( ( BaseType_t ) 8 ), 0, ( &taskWoken ), 0U ) != ( ( ( BaseType_t ) 1 ) )) {
      return osErrorOS;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };
  }
  else {
    if (xTimerGenericCommand( ( timer_id ), ( ( BaseType_t ) 3 ), 0U, 
# 456 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
       ((void *)0)
# 456 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
       , ( 0 ) ) != ( ( ( BaseType_t ) 1 ) )) {
      result = osErrorOS;
    }
  }



  return result;
}







osStatus osTimerDelete (osTimerId timer_id)
{
osStatus result = osOK;



   if (inHandlerMode()) {
     return osErrorISR;
  }
  else {
    if ((xTimerGenericCommand( ( timer_id ), ( ( BaseType_t ) 5 ), 0U, 
# 482 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
        ((void *)0)
# 482 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
        , ( 0xFFFFFFFF ) )) != ( ( ( BaseType_t ) 1 ) )) {
      result = osErrorOS;
    }
  }





  return result;
}
# 502 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
int32_t osSignalSet (osThreadId thread_id, int32_t signal)
{

  BaseType_t xHigherPriorityTaskWoken = ( ( BaseType_t ) 0 );
  uint32_t ulPreviousNotificationValue = 0;

  if (inHandlerMode())
  {
    if(xTaskGenericNotifyFromISR( thread_id , (uint32_t)signal, eSetBits, &ulPreviousNotificationValue, &xHigherPriorityTaskWoken ) != ( ( ( BaseType_t ) 1 ) ) )
      return 0x80000000;

    if( xHigherPriorityTaskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };
  }
  else if(xTaskGenericNotify( thread_id , (uint32_t)signal, eSetBits, &ulPreviousNotificationValue) != ( ( ( BaseType_t ) 1 ) ) )
    return 0x80000000;

  return ulPreviousNotificationValue;






}
# 534 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
int32_t osSignalClear (osThreadId thread_id, int32_t signal);
# 543 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osEvent osSignalWait (int32_t signals, uint32_t millisec)
{
  osEvent ret;



  TickType_t ticks;

  ret.value.signals = 0;
  ticks = 0;
  if (millisec == 0xFFFFFFFF) {
    ticks = ( TickType_t ) 0xffffffffUL;
  }
  else if (millisec != 0) {
    ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
    if (ticks == 0) {
      ticks = 1;
    }
  }

  if (inHandlerMode())
  {
    ret.status = osErrorISR;
  }
  else
  {
    if(xTaskNotifyWait( 0,(uint32_t) signals, (uint32_t *)&ret.value.signals, ticks) != ( ( BaseType_t ) 1 ))
    {
      if(ticks == 0) ret.status = osOK;
      else ret.status = osEventTimeout;
    }
    else if(ret.value.signals < 0)
    {
      ret.status = osErrorValue;
    }
    else ret.status = osEventSignal;
  }







  return ret;
}
# 597 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osMutexId osMutexCreate (const osMutexDef_t *mutex_def)
{




  if (mutex_def->controlblock != 
# 603 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                                ((void *)0)
# 603 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                                    ) {
    return xQueueCreateMutexStatic( ( ( uint8_t ) 1U ), ( mutex_def->controlblock ) );
     }
  else {
    return xQueueCreateMutex( ( ( uint8_t ) 1U ) );
  }
# 617 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
}
# 626 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osStatus osMutexWait (osMutexId mutex_id, uint32_t millisec)
{
  TickType_t ticks;
  long taskWoken = ( ( BaseType_t ) 0 );


  if (mutex_id == 
# 632 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                 ((void *)0)
# 632 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                     ) {
    return osErrorParameter;
  }

  ticks = 0;
  if (millisec == 0xFFFFFFFF) {
    ticks = ( TickType_t ) 0xffffffffUL;
  }
  else if (millisec != 0) {
    ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
    if (ticks == 0) {
      ticks = 1;
    }
  }

  if (inHandlerMode()) {
    if (xQueueReceiveFromISR( ( QueueHandle_t ) ( mutex_id ), 
# 648 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
       ((void *)0)
# 648 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
       , ( &taskWoken ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
 if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };
  }
  else if (xQueueSemaphoreTake( ( mutex_id ), ( ticks ) ) != ( ( BaseType_t ) 1 )) {
    return osErrorOS;
  }

  return osOK;
}







osStatus osMutexRelease (osMutexId mutex_id)
{
  osStatus result = osOK;
  long taskWoken = ( ( BaseType_t ) 0 );

  if (inHandlerMode()) {
    if (xQueueGiveFromISR( ( QueueHandle_t ) ( mutex_id ), ( &taskWoken ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };
  }
  else if (xQueueGenericSend( ( QueueHandle_t ) ( mutex_id ), 
# 677 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
          ((void *)0)
# 677 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
          , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 ))
  {
    result = osErrorOS;
  }
  return result;
}







osStatus osMutexDelete (osMutexId mutex_id)
{
  if (inHandlerMode()) {
    return osErrorISR;
  }

  vQueueDelete(mutex_id);

  return osOK;
}
# 712 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osSemaphoreId osSemaphoreCreate (const osSemaphoreDef_t *semaphore_def, int32_t count)
{


  osSemaphoreId sema;

  if (semaphore_def->controlblock != 
# 718 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                                    ((void *)0)
# 718 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                                        ){
    if (count == 1) {
      return xQueueGenericCreateStatic( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), 
# 720 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
            ((void *)0)
# 720 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
            , semaphore_def->controlblock, ( ( uint8_t ) 3U ) );
    }
    else {



      return 
# 726 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
            ((void *)0)
# 726 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                ;

    }
  }
  else {
    if (count == 1) {
      { ( sema ) = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) ); if( ( sema ) != 
# 732 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
     ((void *)0) 
# 732 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
     ) { ( void ) xQueueGenericSend( ( QueueHandle_t ) ( ( sema ) ), 
# 732 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
     ((void *)0)
# 732 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
     , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) ); } };
      return sema;
    }
    else {



      return 
# 739 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
            ((void *)0)
# 739 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                ;

    }
  }
# 770 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
}
# 779 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
int32_t osSemaphoreWait (osSemaphoreId semaphore_id, uint32_t millisec)
{
  TickType_t ticks;
  long taskWoken = ( ( BaseType_t ) 0 );


  if (semaphore_id == 
# 785 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                     ((void *)0)
# 785 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                         ) {
    return osErrorParameter;
  }

  ticks = 0;
  if (millisec == 0xFFFFFFFF) {
    ticks = ( TickType_t ) 0xffffffffUL;
  }
  else if (millisec != 0) {
    ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
    if (ticks == 0) {
      ticks = 1;
    }
  }

  if (inHandlerMode()) {
    if (xQueueReceiveFromISR( ( QueueHandle_t ) ( semaphore_id ), 
# 801 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
       ((void *)0)
# 801 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
       , ( &taskWoken ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
 if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };
  }
  else if (xQueueSemaphoreTake( ( semaphore_id ), ( ticks ) ) != ( ( BaseType_t ) 1 )) {
    return osErrorOS;
  }

  return osOK;
}







osStatus osSemaphoreRelease (osSemaphoreId semaphore_id)
{
  osStatus result = osOK;
  long taskWoken = ( ( BaseType_t ) 0 );


  if (inHandlerMode()) {
    if (xQueueGiveFromISR( ( QueueHandle_t ) ( semaphore_id ), ( &taskWoken ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };
  }
  else {
    if (xQueueGenericSend( ( QueueHandle_t ) ( semaphore_id ), 
# 832 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
       ((void *)0)
# 832 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
      result = osErrorOS;
    }
  }

  return result;
}







osStatus osSemaphoreDelete (osSemaphoreId semaphore_id)
{
  if (inHandlerMode()) {
    return osErrorISR;
  }

  vQueueDelete( ( QueueHandle_t ) ( semaphore_id ) );

  return osOK;
}
# 868 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
typedef struct os_pool_cb {
  void *pool;
  uint8_t *markers;
  uint32_t pool_sz;
  uint32_t item_sz;
  uint32_t currentIndex;
} os_pool_cb_t;
# 883 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osPoolId osPoolCreate (const osPoolDef_t *pool_def)
{

  osPoolId thePool;
  int itemSize = 4 * ((pool_def->item_sz + 3) / 4);
  uint32_t i;


 thePool = pvPortMalloc(sizeof(os_pool_cb_t));


  if (thePool) {
    thePool->pool_sz = pool_def->pool_sz;
    thePool->item_sz = itemSize;
    thePool->currentIndex = 0;


    thePool->markers = pvPortMalloc(pool_def->pool_sz);

    if (thePool->markers) {

     thePool->pool = pvPortMalloc(pool_def->pool_sz * itemSize);

      if (thePool->pool) {
        for (i = 0; i < pool_def->pool_sz; i++) {
          thePool->markers[i] = 0;
        }
      }
      else {
        vPortFree(thePool->markers);
        vPortFree(thePool);
        thePool = 
# 914 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                 ((void *)0)
# 914 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                     ;
      }
    }
    else {
      vPortFree(thePool);
      thePool = 
# 919 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
               ((void *)0)
# 919 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                   ;
    }
  }

  return thePool;




}







void *osPoolAlloc (osPoolId pool_id)
{
  int dummy = 0;
  void *p = 
# 939 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
           ((void *)0)
# 939 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
               ;
  uint32_t i;
  uint32_t index;

  if (inHandlerMode()) {
    dummy = ulPortRaiseBASEPRI();
  }
  else {
    vPortEnterCritical();
  }

  for (i = 0; i < pool_id->pool_sz; i++) {
    index = (pool_id->currentIndex + i) % pool_id->pool_sz;

    if (pool_id->markers[index] == 0) {
      pool_id->markers[index] = 1;
      p = (void *)((uint32_t)(pool_id->pool) + (index * pool_id->item_sz));
      pool_id->currentIndex = index;
      break;
    }
  }

  if (inHandlerMode()) {
    vPortSetBASEPRI(dummy);
  }
  else {
    vPortExitCritical();
  }

  return p;
}







void *osPoolCAlloc (osPoolId pool_id)
{
  void *p = osPoolAlloc(pool_id);

  if (p != 
# 981 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
          ((void *)0)
# 981 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
              )
  {
    memset(p, 0, sizeof(pool_id->pool_sz));
  }

  return p;
}
# 996 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osStatus osPoolFree (osPoolId pool_id, void *block)
{
  uint32_t index;

  if (pool_id == 
# 1000 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                ((void *)0)
# 1000 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                    ) {
    return osErrorParameter;
  }

  if (block == 
# 1004 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
              ((void *)0)
# 1004 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                  ) {
    return osErrorParameter;
  }

  if (block < pool_id->pool) {
    return osErrorParameter;
  }

  index = (uint32_t)block - (uint32_t)(pool_id->pool);
  if (index % pool_id->item_sz) {
    return osErrorParameter;
  }
  index = index / pool_id->item_sz;
  if (index >= pool_id->pool_sz) {
    return osErrorParameter;
  }

  pool_id->markers[index] = 0;

  return osOK;
}
# 1040 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osMessageQId osMessageCreate (const osMessageQDef_t *queue_def, osThreadId thread_id)
{
  (void) thread_id;



  if ((queue_def->buffer != 
# 1046 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                           ((void *)0)
# 1046 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                               ) && (queue_def->controlblock != 
# 1046 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                                                                ((void *)0)
# 1046 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                                                                    )) {
    return xQueueGenericCreateStatic( ( queue_def->queue_sz ), ( queue_def->item_sz ), ( queue_def->buffer ), ( queue_def->controlblock ), ( ( ( uint8_t ) 0U ) ) );
  }
  else {
    return xQueueGenericCreate( ( queue_def->queue_sz ), ( queue_def->item_sz ), ( ( ( uint8_t ) 0U ) ) );
  }





}
# 1067 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osStatus osMessagePut (osMessageQId queue_id, uint32_t info, uint32_t millisec)
{
  long taskWoken = ( ( BaseType_t ) 0 );
  TickType_t ticks;

  ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
  if (ticks == 0) {
    ticks = 1;
  }

  if (inHandlerMode()) {
    if (xQueueGenericSendFromISR( ( queue_id ), ( &info ), ( &taskWoken ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };
  }
  else {
    if (xQueueGenericSend( ( queue_id ), ( &info ), ( ticks ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
  }

  return osOK;
}
# 1099 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osEvent osMessageGet (osMessageQId queue_id, uint32_t millisec)
{
  long taskWoken;
  TickType_t ticks;
  osEvent event;

  event.def.message_id = queue_id;
  event.value.v = 0;

  if (queue_id == 
# 1108 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                 ((void *)0)
# 1108 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                     ) {
    event.status = osErrorParameter;
    return event;
  }

  taskWoken = ( ( BaseType_t ) 0 );

  ticks = 0;
  if (millisec == 0xFFFFFFFF) {
    ticks = ( TickType_t ) 0xffffffffUL;
  }
  else if (millisec != 0) {
    ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
    if (ticks == 0) {
      ticks = 1;
    }
  }

  if (inHandlerMode()) {
    if (xQueueReceiveFromISR(queue_id, &event.value.v, &taskWoken) == ( ( BaseType_t ) 1 )) {

      event.status = osEventMessage;
    }
    else {
      event.status = osOK;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };
  }
  else {
    if (xQueueReceive(queue_id, &event.value.v, ticks) == ( ( BaseType_t ) 1 )) {

      event.status = osEventMessage;
    }
    else {
      event.status = (ticks == 0) ? osOK : osEventTimeout;
    }
  }

  return event;
}







typedef struct os_mailQ_cb {
  const osMailQDef_t *queue_def;
  QueueHandle_t handle;
  osPoolId pool;
} os_mailQ_cb_t;
# 1168 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osMailQId osMailCreate (const osMailQDef_t *queue_def, osThreadId thread_id)
{

  (void) thread_id;

  osPoolDef_t pool_def = {queue_def->queue_sz, queue_def->item_sz, 
# 1173 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                                                                  ((void *)0)
# 1173 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                                                                      };



  *(queue_def->cb) = pvPortMalloc(sizeof(struct os_mailQ_cb));

  if (*(queue_def->cb) == 
# 1179 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                         ((void *)0)
# 1179 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                             ) {
    return 
# 1180 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
          ((void *)0)
# 1180 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
              ;
  }
  (*(queue_def->cb))->queue_def = queue_def;


  (*(queue_def->cb))->handle = xQueueGenericCreate( ( queue_def->queue_sz ), ( sizeof(void *) ), ( ( ( uint8_t ) 0U ) ) );


  if ((*(queue_def->cb))->handle == 
# 1188 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                                   ((void *)0)
# 1188 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                                       ) {
    vPortFree(*(queue_def->cb));
    return 
# 1190 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
          ((void *)0)
# 1190 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
              ;
  }


  (*(queue_def->cb))->pool = osPoolCreate(&pool_def);
  if ((*(queue_def->cb))->pool == 
# 1195 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                                 ((void *)0)
# 1195 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                                     ) {

    vPortFree(*(queue_def->cb));
    return 
# 1198 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
          ((void *)0)
# 1198 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
              ;
  }

  return *(queue_def->cb);



}
# 1214 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
void *osMailAlloc (osMailQId queue_id, uint32_t millisec)
{
  (void) millisec;
  void *p;


  if (queue_id == 
# 1220 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                 ((void *)0)
# 1220 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                     ) {
    return 
# 1221 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
          ((void *)0)
# 1221 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
              ;
  }

  p = osPoolAlloc(queue_id->pool);

  return p;
}
# 1236 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
void *osMailCAlloc (osMailQId queue_id, uint32_t millisec)
{
  uint32_t i;
  void *p = osMailAlloc(queue_id, millisec);

  if (p) {
    for (i = 0; i < queue_id->queue_def->item_sz; i++) {
      ((uint8_t *)p)[i] = 0;
    }
  }

  return p;
}
# 1257 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osStatus osMailPut (osMailQId queue_id, void *mail)
{
  long taskWoken;


  if (queue_id == 
# 1262 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                 ((void *)0)
# 1262 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                     ) {
    return osErrorParameter;
  }

  taskWoken = ( ( BaseType_t ) 0 );

  if (inHandlerMode()) {
    if (xQueueGenericSendFromISR( ( queue_id->handle ), ( &mail ), ( &taskWoken ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };
  }
  else {
    if (xQueueGenericSend( ( queue_id->handle ), ( &mail ), ( 0 ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
  }

  return osOK;
}
# 1290 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osEvent osMailGet (osMailQId queue_id, uint32_t millisec)
{
  long taskWoken;
  TickType_t ticks;
  osEvent event;

  event.def.mail_id = queue_id;

  if (queue_id == 
# 1298 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                 ((void *)0)
# 1298 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                     ) {
    event.status = osErrorParameter;
    return event;
  }

  taskWoken = ( ( BaseType_t ) 0 );

  ticks = 0;
  if (millisec == 0xFFFFFFFF) {
    ticks = ( TickType_t ) 0xffffffffUL;
  }
  else if (millisec != 0) {
    ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
    if (ticks == 0) {
      ticks = 1;
    }
  }

  if (inHandlerMode()) {
    if (xQueueReceiveFromISR(queue_id->handle, &event.value.p, &taskWoken) == ( ( BaseType_t ) 1 )) {

      event.status = osEventMail;
    }
    else {
      event.status = osOK;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };
  }
  else {
    if (xQueueReceive(queue_id->handle, &event.value.p, ticks) == ( ( BaseType_t ) 1 )) {

      event.status = osEventMail;
    }
    else {
      event.status = (ticks == 0) ? osOK : osEventTimeout;
    }
  }

  return event;
}
# 1346 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osStatus osMailFree (osMailQId queue_id, void *mail)
{
  if (queue_id == 
# 1348 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                 ((void *)0)
# 1348 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                     ) {
    return osErrorParameter;
  }

  return osPoolFree(queue_id->pool, mail);
}
# 1362 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
void osSystickHandler(void)
{


  if (xTaskGetSchedulerState() != ( ( BaseType_t ) 1 ))
  {

    SysTick_Handler();

  }

}
# 1432 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osStatus osThreadSuspend (osThreadId thread_id)
{

    vTaskSuspend(thread_id);

  return osOK;



}






osStatus osThreadResume (osThreadId thread_id)
{

  if(inHandlerMode())
  {
    if (xTaskResumeFromISR(thread_id) == ( ( BaseType_t ) 1 ))
    {
      if( ( ( BaseType_t ) 1 ) != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ::: "memory" ); __asm volatile( "isb" ); };
    }
  }
  else
  {
    vTaskResume(thread_id);
  }
  return osOK;



}





osStatus osThreadSuspendAll (void)
{
  vTaskSuspendAll();

  return osOK;
}





osStatus osThreadResumeAll (void)
{
  if (xTaskResumeAll() == ( ( BaseType_t ) 1 ))
    return osOK;
  else
    return osErrorOS;

}
# 1500 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osStatus osDelayUntil (uint32_t *PreviousWakeTime, uint32_t millisec)
{






  (void) millisec;
  (void) PreviousWakeTime;

  return osErrorResource;

}






osStatus osAbortDelay(osThreadId thread_id)
{






  (void) thread_id;

  return osErrorResource;

}
# 1541 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
osStatus osThreadList (uint8_t *buffer)
{



  return osOK;
}







osEvent osMessagePeek (osMessageQId queue_id, uint32_t millisec)
{
  TickType_t ticks;
  osEvent event;

  event.def.message_id = queue_id;

  if (queue_id == 
# 1562 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
                 ((void *)0)
# 1562 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
                     ) {
    event.status = osErrorParameter;
    return event;
  }

  ticks = 0;
  if (millisec == 0xFFFFFFFF) {
    ticks = ( TickType_t ) 0xffffffffUL;
  }
  else if (millisec != 0) {
    ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
    if (ticks == 0) {
      ticks = 1;
    }
  }

  if (xQueuePeek(queue_id, &event.value.v, ticks) == ( ( BaseType_t ) 1 ))
  {

    event.status = osEventMessage;
  }
  else
  {
    event.status = (ticks == 0) ? osOK : osEventTimeout;
  }

  return event;
}






uint32_t osMessageWaiting(osMessageQId queue_id)
{
  if (inHandlerMode()) {
    return uxQueueMessagesWaitingFromISR(queue_id);
  }
  else
  {
    return uxQueueMessagesWaiting(queue_id);
  }
}






uint32_t osMessageAvailableSpace(osMessageQId queue_id)
{
  return uxQueueSpacesAvailable(queue_id);
}






osStatus osMessageDelete (osMessageQId queue_id)
{
  if (inHandlerMode()) {
    return osErrorISR;
  }

  vQueueDelete(queue_id);

  return osOK;
}






osMutexId osRecursiveMutexCreate (const osMutexDef_t *mutex_def)
{
# 1655 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
  return 
# 1655 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c" 3 4
        ((void *)0)
# 1655 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
            ;

}






osStatus osRecursiveMutexRelease (osMutexId mutex_id)
{
# 1675 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
 return osErrorResource;

}







osStatus osRecursiveMutexWait (osMutexId mutex_id, uint32_t millisec)
{
# 1715 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
 return osErrorResource;

}






uint32_t osSemaphoreGetCount(osSemaphoreId semaphore_id)
{
  return uxQueueMessagesWaiting( ( QueueHandle_t ) ( semaphore_id ) );
}

	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-m4
	.eabi_attribute	6, 13	@ Tag_CPU_arch
	.eabi_attribute	7, 77	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 0	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	fpv4-sp-d16
	.eabi_attribute	27, 1	@ Tag_ABI_HardFP_use
	.eabi_attribute	36, 1	@ Tag_FP_HP_extension
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 2	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 1	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"main.c"
	.file	1 "D:\\2026RoboMaster\\ClionProj\\1012_SPI\\MDK-ARM" "../Core/Src/main.c"
	.file	2 "D:\\2026RoboMaster\\ClionProj\\1012_SPI\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_def.h"
	.file	3 "D:\\Keil_5\\ARM\\ARMCLANG\\Bin\\..\\include" "stdint.h"
	.file	4 "D:\\2026RoboMaster\\ClionProj\\1012_SPI\\MDK-ARM" "../Drivers/CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h"
	.file	5 "D:\\Keil_5\\ARM\\ARMCLANG\\Bin\\..\\include" "stddef.h"
	.section	.text.__cxx_global_var_init,"ax",%progbits
	.p2align	2                               @ -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,%function
	.code	16                              @ @__cxx_global_var_init
	.thumb_func
__cxx_global_var_init:
.Lfunc_begin0:
	.file	6 "D:\\2026RoboMaster\\ClionProj\\1012_SPI\\MDK-ARM" "../Core/Src\\main.c"
	.loc	6 0 0                           @ ../Core/Src\main.c:0:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
.Ltmp0:
	.loc	1 51 12 prologue_end            @ ../Core/Src/main.c:51:12
	movw	r0, :lower16:rc
	movt	r0, :upper16:rc
	movw	r1, :lower16:huart3
	movt	r1, :upper16:huart3
	bl	_ZN10ControllerC1EP20__UART_HandleTypeDef
	.loc	1 51 18 is_stmt 0               @ ../Core/Src/main.c:51:18
	pop	{r7, pc}
.Ltmp1:
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.main,"ax",%progbits
	.hidden	main                            @ -- Begin function main
	.globl	main
	.p2align	2
	.type	main,%function
	.code	16                              @ @main
	.thumb_func
main:
.Lfunc_begin1:
	.loc	1 70 0 is_stmt 1                @ ../Core/Src/main.c:70:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 16
	movs	r0, #0
	str	r0, [sp, #4]
.Ltmp2:
	.loc	1 79 3 prologue_end             @ ../Core/Src/main.c:79:3
	bl	HAL_Init
	.loc	1 86 3                          @ ../Core/Src/main.c:86:3
	bl	_Z18SystemClock_Configv
	.loc	1 93 3                          @ ../Core/Src/main.c:93:3
	bl	MX_GPIO_Init
	.loc	1 94 3                          @ ../Core/Src/main.c:94:3
	bl	MX_DMA_Init
	.loc	1 95 3                          @ ../Core/Src/main.c:95:3
	bl	MX_SPI1_Init
	.loc	1 96 3                          @ ../Core/Src/main.c:96:3
	bl	MX_TIM6_Init
	.loc	1 97 3                          @ ../Core/Src/main.c:97:3
	bl	MX_USART3_UART_Init
	.loc	1 99 5                          @ ../Core/Src/main.c:99:5
	bl	_Z11bmi088_initv
	.loc	1 100 5                         @ ../Core/Src/main.c:100:5
	movw	r0, :lower16:htim6
	movt	r0, :upper16:htim6
	bl	HAL_TIM_Base_Start_IT
	.loc	1 101 5                         @ ../Core/Src/main.c:101:5
	movw	r0, :lower16:huart3
	movt	r0, :upper16:huart3
	movw	r1, :lower16:rc
	movt	r1, :upper16:rc
	movs	r2, #32
	bl	HAL_UARTEx_ReceiveToIdle_DMA
	.loc	1 107 5                         @ ../Core/Src/main.c:107:5
	b	.LBB1_1
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	b	.LBB1_1
.Ltmp3:
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text._Z18SystemClock_Configv,"ax",%progbits
	.hidden	_Z18SystemClock_Configv         @ -- Begin function _Z18SystemClock_Configv
	.globl	_Z18SystemClock_Configv
	.p2align	2
	.type	_Z18SystemClock_Configv,%function
	.code	16                              @ @_Z18SystemClock_Configv
	.thumb_func
_Z18SystemClock_Configv:
.Lfunc_begin2:
	.loc	1 120 0                         @ ../Core/Src/main.c:120:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#80
	sub	sp, #80
	.cfi_def_cfa_offset 88
	add	r0, sp, #32
	movs	r1, #48
.Ltmp4:
	.loc	1 121 22 prologue_end           @ ../Core/Src/main.c:121:22
	bl	__aeabi_memclr4
	movs	r0, #0
	.loc	1 122 22                        @ ../Core/Src/main.c:122:22
	str	r0, [sp, #28]
	str	r0, [sp, #24]
	str	r0, [sp, #20]
	str	r0, [sp, #16]
	str	r0, [sp, #12]
	.loc	1 126 3                         @ ../Core/Src/main.c:126:3
	b	.LBB2_1
.LBB2_1:
	.loc	1 0 3 is_stmt 0                 @ ../Core/Src/main.c:0:3
	movs	r0, #0
.Ltmp5:
	.loc	1 126 3                         @ ../Core/Src/main.c:126:3
	str	r0, [sp, #8]
	movw	r0, #14400
	movt	r0, #16386
	ldr	r1, [r0]
	orr	r1, r1, #268435456
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #268435456
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	b	.LBB2_2
.Ltmp6:
.LBB2_2:
	.loc	1 127 3 is_stmt 1               @ ../Core/Src/main.c:127:3
	b	.LBB2_3
.LBB2_3:
	.loc	1 0 3 is_stmt 0                 @ ../Core/Src/main.c:0:3
	movs	r0, #0
.Ltmp7:
	.loc	1 127 3                         @ ../Core/Src/main.c:127:3
	str	r0, [sp, #4]
	movw	r0, #28672
	movt	r0, #16384
	ldr	r1, [r0]
	orr	r1, r1, #16384
	str	r1, [r0]
	ldr	r0, [r0]
	and	r0, r0, #16384
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	b	.LBB2_4
.Ltmp8:
.LBB2_4:
	.loc	1 0 3                           @ ../Core/Src/main.c:0:3
	movs	r0, #1
	.loc	1 132 36 is_stmt 1              @ ../Core/Src/main.c:132:36
	str	r0, [sp, #32]
	mov.w	r0, #65536
	.loc	1 133 30                        @ ../Core/Src/main.c:133:30
	str	r0, [sp, #36]
	movs	r0, #2
	.loc	1 134 34                        @ ../Core/Src/main.c:134:34
	str	r0, [sp, #56]
	mov.w	r1, #4194304
	.loc	1 135 35                        @ ../Core/Src/main.c:135:35
	str	r1, [sp, #60]
	movs	r1, #6
	.loc	1 136 30                        @ ../Core/Src/main.c:136:30
	str	r1, [sp, #64]
	movs	r1, #168
	.loc	1 137 30                        @ ../Core/Src/main.c:137:30
	str	r1, [sp, #68]
	.loc	1 138 30                        @ ../Core/Src/main.c:138:30
	str	r0, [sp, #72]
	movs	r0, #4
	.loc	1 139 30                        @ ../Core/Src/main.c:139:30
	str	r0, [sp, #76]
	add	r0, sp, #32
.Ltmp9:
	.loc	1 140 7                         @ ../Core/Src/main.c:140:7
	bl	HAL_RCC_OscConfig
.Ltmp10:
	.loc	1 140 7 is_stmt 0               @ ../Core/Src/main.c:140:7
	cbz	r0, .LBB2_6
	b	.LBB2_5
.LBB2_5:
.Ltmp11:
	.loc	1 142 5 is_stmt 1               @ ../Core/Src/main.c:142:5
	bl	Error_Handler
	.loc	1 143 3                         @ ../Core/Src/main.c:143:3
	b	.LBB2_6
.Ltmp12:
.LBB2_6:
	.loc	1 0 3 is_stmt 0                 @ ../Core/Src/main.c:0:3
	movs	r0, #15
	.loc	1 147 31 is_stmt 1              @ ../Core/Src/main.c:147:31
	str	r0, [sp, #12]
	movs	r0, #2
	.loc	1 149 34                        @ ../Core/Src/main.c:149:34
	str	r0, [sp, #16]
	movs	r0, #0
	.loc	1 150 35                        @ ../Core/Src/main.c:150:35
	str	r0, [sp, #20]
	mov.w	r0, #5120
	.loc	1 151 36                        @ ../Core/Src/main.c:151:36
	str	r0, [sp, #24]
	mov.w	r0, #4096
	.loc	1 152 36                        @ ../Core/Src/main.c:152:36
	str	r0, [sp, #28]
	add	r0, sp, #12
	movs	r1, #5
.Ltmp13:
	.loc	1 154 7                         @ ../Core/Src/main.c:154:7
	bl	HAL_RCC_ClockConfig
.Ltmp14:
	.loc	1 154 7 is_stmt 0               @ ../Core/Src/main.c:154:7
	cbz	r0, .LBB2_8
	b	.LBB2_7
.LBB2_7:
.Ltmp15:
	.loc	1 156 5 is_stmt 1               @ ../Core/Src/main.c:156:5
	bl	Error_Handler
	.loc	1 157 3                         @ ../Core/Src/main.c:157:3
	b	.LBB2_8
.Ltmp16:
.LBB2_8:
	.loc	1 161 3                         @ ../Core/Src/main.c:161:3
	bl	HAL_RCC_EnableCSS
	.loc	1 162 1                         @ ../Core/Src/main.c:162:1
	add	sp, #80
	pop	{r7, pc}
.Ltmp17:
.Lfunc_end2:
	.size	_Z18SystemClock_Configv, .Lfunc_end2-_Z18SystemClock_Configv
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.Error_Handler,"ax",%progbits
	.hidden	Error_Handler                   @ -- Begin function Error_Handler
	.globl	Error_Handler
	.p2align	2
	.type	Error_Handler,%function
	.code	16                              @ @Error_Handler
	.thumb_func
Error_Handler:
.Lfunc_begin3:
	.loc	1 173 0                         @ ../Core/Src/main.c:173:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.file	7 "D:\\2026RoboMaster\\ClionProj\\1012_SPI\\MDK-ARM" "../Drivers/CMSIS/Include/cmsis_armclang.h"
	.loc	7 752 3 prologue_end            @ ../Drivers/CMSIS/Include/cmsis_armclang.h:752:3
	@APP
	cpsid i
	@NO_APP
.Ltmp18:
	.loc	1 177 5                         @ ../Core/Src/main.c:177:5
	b	.LBB3_1
.LBB3_1:                                @ =>This Inner Loop Header: Depth=1
	b	.LBB3_1
.Ltmp19:
.Lfunc_end3:
	.size	Error_Handler, .Lfunc_end3-Error_Handler
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text._GLOBAL__sub_I_main.c,"ax",%progbits
	.p2align	2                               @ -- Begin function _GLOBAL__sub_I_main.c
	.type	_GLOBAL__sub_I_main.c,%function
	.code	16                              @ @_GLOBAL__sub_I_main.c
	.thumb_func
_GLOBAL__sub_I_main.c:
.Lfunc_begin4:
	.loc	6 0 0                           @ ../Core/Src\main.c:0:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
.Ltmp20:
	bl	__cxx_global_var_init
	pop	{r7, pc}
.Ltmp21:
.Lfunc_end4:
	.size	_GLOBAL__sub_I_main.c, .Lfunc_end4-_GLOBAL__sub_I_main.c
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.hidden	rc                              @ @rc
	.type	rc,%object
	.section	.bss.rc,"aw",%nobits
	.globl	rc
	.p2align	2, 0x0
rc:
	.zero	96
	.size	rc, 96

	.section	.init_array,"aw",%init_array
	.p2align	2, 0x0
	.long	_GLOBAL__sub_I_main.c(target1)
	.type	__ARM_use_no_argv,%object       @ @__ARM_use_no_argv
	.section	.ARM.use_no_argv,"awR",%progbits,unique,1
	.globl	__ARM_use_no_argv
	.p2align	2, 0x0
__ARM_use_no_argv:
	.long	1                               @ 0x1
	.size	__ARM_use_no_argv, 4

	.file	8 "D:\\2026RoboMaster\\ClionProj\\1012_SPI\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc\\stm32f4xx_hal_rcc.h"
	.file	9 "D:\\2026RoboMaster\\ClionProj\\1012_SPI\\MDK-ARM" "../Drivers/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_rcc_ex.h"
	.section	.debug_abbrev,"",%progbits
	.byte	1                               @ Abbreviation Code
	.byte	17                              @ DW_TAG_compile_unit
	.byte	1                               @ DW_CHILDREN_yes
	.byte	37                              @ DW_AT_producer
	.byte	14                              @ DW_FORM_strp
	.byte	19                              @ DW_AT_language
	.byte	5                               @ DW_FORM_data2
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	16                              @ DW_AT_stmt_list
	.byte	23                              @ DW_FORM_sec_offset
	.byte	27                              @ DW_AT_comp_dir
	.byte	14                              @ DW_FORM_strp
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	85                              @ DW_AT_ranges
	.byte	23                              @ DW_FORM_sec_offset
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	2                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	3                               @ Abbreviation Code
	.byte	2                               @ DW_TAG_class_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	60                              @ DW_AT_declaration
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	4                               @ Abbreviation Code
	.byte	4                               @ DW_TAG_enumeration_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	5                               @ Abbreviation Code
	.byte	40                              @ DW_TAG_enumerator
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	28                              @ DW_AT_const_value
	.byte	15                              @ DW_FORM_udata
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	6                               @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	7                               @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	8                               @ Abbreviation Code
	.byte	22                              @ DW_TAG_typedef
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	9                               @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	54                              @ DW_AT_calling_convention
	.byte	11                              @ DW_FORM_data1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
	.byte	13                              @ DW_TAG_member
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	56                              @ DW_AT_data_member_location
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	11                              @ Abbreviation Code
	.byte	53                              @ DW_TAG_volatile_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	12                              @ Abbreviation Code
	.byte	22                              @ DW_TAG_typedef
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	13                              @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	14                              @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	15                              @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	16                              @ Abbreviation Code
	.byte	8                               @ DW_TAG_imported_declaration
	.byte	0                               @ DW_CHILDREN_no
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	24                              @ DW_AT_import
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	17                              @ Abbreviation Code
	.byte	8                               @ DW_TAG_imported_declaration
	.byte	0                               @ DW_CHILDREN_no
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	24                              @ DW_AT_import
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	18                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	52                              @ DW_AT_artificial
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	19                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	20                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	110                             @ DW_AT_linkage_name
	.byte	14                              @ DW_FORM_strp
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	21                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	22                              @ Abbreviation Code
	.byte	11                              @ DW_TAG_lexical_block
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	23                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
	.byte	110                             @ DW_AT_linkage_name
	.byte	14                              @ DW_FORM_strp
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	32                              @ DW_AT_inline
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	24                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	25                              @ Abbreviation Code
	.byte	29                              @ DW_TAG_inlined_subroutine
	.byte	0                               @ DW_CHILDREN_no
	.byte	49                              @ DW_AT_abstract_origin
	.byte	19                              @ DW_FORM_ref4
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	88                              @ DW_AT_call_file
	.byte	11                              @ DW_FORM_data1
	.byte	89                              @ DW_AT_call_line
	.byte	11                              @ DW_FORM_data1
	.byte	87                              @ DW_AT_call_column
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	26                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	110                             @ DW_AT_linkage_name
	.byte	14                              @ DW_FORM_strp
	.byte	52                              @ DW_AT_artificial
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	27                              @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	54                              @ DW_AT_calling_convention
	.byte	11                              @ DW_FORM_data1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	28                              @ Abbreviation Code
	.byte	13                              @ DW_TAG_member
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	56                              @ DW_AT_data_member_location
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	0                               @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	4                               @ DWARF version number
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	4                               @ Address Size (in bytes)
	.byte	1                               @ Abbrev [1] 0xb:0x693 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	33                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	0                               @ DW_AT_low_pc
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	2                               @ Abbrev [2] 0x26:0x11 DW_TAG_variable
	.long	.Linfo_string3                  @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	rc
	.byte	3                               @ Abbrev [3] 0x37:0x5 DW_TAG_class_type
	.long	.Linfo_string4                  @ DW_AT_name
                                        @ DW_AT_declaration
	.byte	4                               @ Abbrev [4] 0x3c:0x21 DW_TAG_enumeration_type
	.long	93                              @ DW_AT_type
	.byte	1                               @ DW_AT_byte_size
	.byte	2                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x44:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  @ DW_AT_name
	.byte	0                               @ DW_AT_const_value
	.byte	5                               @ Abbrev [5] 0x4a:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  @ DW_AT_name
	.byte	1                               @ DW_AT_const_value
	.byte	5                               @ Abbrev [5] 0x50:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	2                               @ DW_AT_const_value
	.byte	5                               @ Abbrev [5] 0x56:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  @ DW_AT_name
	.byte	3                               @ DW_AT_const_value
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x5d:0x7 DW_TAG_base_type
	.long	.Linfo_string5                  @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	7                               @ Abbrev [7] 0x64:0x5 DW_TAG_pointer_type
	.long	105                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x69:0xc DW_TAG_typedef
	.long	117                             @ DW_AT_type
	.long	.Linfo_string43                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.short	628                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x75:0x18d DW_TAG_structure_type
	.byte	5                               @ DW_AT_calling_convention
	.byte	136                             @ DW_AT_byte_size
	.byte	4                               @ DW_AT_decl_file
	.short	596                             @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x7b:0xd DW_TAG_member
	.long	.Linfo_string10                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	598                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x88:0xd DW_TAG_member
	.long	.Linfo_string13                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	599                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x95:0xd DW_TAG_member
	.long	.Linfo_string14                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	600                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0xa2:0xd DW_TAG_member
	.long	.Linfo_string15                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	601                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0xaf:0xd DW_TAG_member
	.long	.Linfo_string16                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	602                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0xbc:0xd DW_TAG_member
	.long	.Linfo_string17                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	603                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0xc9:0xd DW_TAG_member
	.long	.Linfo_string18                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	604                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0xd6:0xd DW_TAG_member
	.long	.Linfo_string19                 @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	605                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0xe3:0xd DW_TAG_member
	.long	.Linfo_string20                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	606                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0xf0:0xd DW_TAG_member
	.long	.Linfo_string21                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	607                             @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0xfd:0xd DW_TAG_member
	.long	.Linfo_string22                 @ DW_AT_name
	.long	537                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	608                             @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x10a:0xd DW_TAG_member
	.long	.Linfo_string24                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	609                             @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x117:0xd DW_TAG_member
	.long	.Linfo_string25                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	610                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x124:0xd DW_TAG_member
	.long	.Linfo_string26                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	611                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x131:0xd DW_TAG_member
	.long	.Linfo_string27                 @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	612                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x13e:0xd DW_TAG_member
	.long	.Linfo_string28                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	613                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x14b:0xd DW_TAG_member
	.long	.Linfo_string29                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	614                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x158:0xd DW_TAG_member
	.long	.Linfo_string30                 @ DW_AT_name
	.long	537                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	615                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x165:0xd DW_TAG_member
	.long	.Linfo_string31                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	616                             @ DW_AT_decl_line
	.byte	80                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x172:0xd DW_TAG_member
	.long	.Linfo_string32                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	617                             @ DW_AT_decl_line
	.byte	84                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x17f:0xd DW_TAG_member
	.long	.Linfo_string33                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	618                             @ DW_AT_decl_line
	.byte	88                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x18c:0xd DW_TAG_member
	.long	.Linfo_string34                 @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	619                             @ DW_AT_decl_line
	.byte	92                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x199:0xd DW_TAG_member
	.long	.Linfo_string35                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	620                             @ DW_AT_decl_line
	.byte	96                              @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x1a6:0xd DW_TAG_member
	.long	.Linfo_string36                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	621                             @ DW_AT_decl_line
	.byte	100                             @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x1b3:0xd DW_TAG_member
	.long	.Linfo_string37                 @ DW_AT_name
	.long	537                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	622                             @ DW_AT_decl_line
	.byte	104                             @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x1c0:0xd DW_TAG_member
	.long	.Linfo_string38                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	623                             @ DW_AT_decl_line
	.byte	112                             @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x1cd:0xd DW_TAG_member
	.long	.Linfo_string39                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	624                             @ DW_AT_decl_line
	.byte	116                             @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x1da:0xd DW_TAG_member
	.long	.Linfo_string40                 @ DW_AT_name
	.long	537                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	625                             @ DW_AT_decl_line
	.byte	120                             @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x1e7:0xd DW_TAG_member
	.long	.Linfo_string41                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	626                             @ DW_AT_decl_line
	.byte	128                             @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x1f4:0xd DW_TAG_member
	.long	.Linfo_string42                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	627                             @ DW_AT_decl_line
	.byte	132                             @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x202:0x5 DW_TAG_volatile_type
	.long	519                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x207:0xb DW_TAG_typedef
	.long	530                             @ DW_AT_type
	.long	.Linfo_string12                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x212:0x7 DW_TAG_base_type
	.long	.Linfo_string11                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	13                              @ Abbrev [13] 0x219:0xc DW_TAG_array_type
	.long	519                             @ DW_AT_type
	.byte	14                              @ Abbrev [14] 0x21e:0x6 DW_TAG_subrange_type
	.long	549                             @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	15                              @ Abbrev [15] 0x225:0x7 DW_TAG_base_type
	.long	.Linfo_string23                 @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	7                               @ Abbrev [7] 0x22c:0x5 DW_TAG_pointer_type
	.long	561                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x231:0xc DW_TAG_typedef
	.long	573                             @ DW_AT_type
	.long	.Linfo_string44                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.short	590                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x23d:0x21 DW_TAG_structure_type
	.byte	5                               @ DW_AT_calling_convention
	.byte	8                               @ DW_AT_byte_size
	.byte	4                               @ DW_AT_decl_file
	.short	586                             @ DW_AT_decl_line
	.byte	10                              @ Abbrev [10] 0x243:0xd DW_TAG_member
	.long	.Linfo_string10                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	588                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	10                              @ Abbrev [10] 0x250:0xd DW_TAG_member
	.long	.Linfo_string39                 @ DW_AT_name
	.long	514                             @ DW_AT_type
	.byte	4                               @ DW_AT_decl_file
	.short	589                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	12                              @ Abbrev [12] 0x25e:0xb DW_TAG_typedef
	.long	93                              @ DW_AT_type
	.long	.Linfo_string45                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x269:0xb DW_TAG_typedef
	.long	628                             @ DW_AT_type
	.long	.Linfo_string47                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	56                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x274:0x7 DW_TAG_base_type
	.long	.Linfo_string46                 @ DW_AT_name
	.byte	6                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	16                              @ Abbrev [16] 0x27b:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	275                             @ DW_AT_decl_line
	.long	617                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x283:0xb DW_TAG_typedef
	.long	654                             @ DW_AT_type
	.long	.Linfo_string49                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x28e:0x7 DW_TAG_base_type
	.long	.Linfo_string48                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	16                              @ Abbrev [16] 0x295:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	276                             @ DW_AT_decl_line
	.long	643                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x29d:0xb DW_TAG_typedef
	.long	680                             @ DW_AT_type
	.long	.Linfo_string51                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	58                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x2a8:0x7 DW_TAG_base_type
	.long	.Linfo_string50                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	16                              @ Abbrev [16] 0x2af:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	277                             @ DW_AT_decl_line
	.long	669                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x2b7:0xb DW_TAG_typedef
	.long	706                             @ DW_AT_type
	.long	.Linfo_string53                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	59                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x2c2:0x7 DW_TAG_base_type
	.long	.Linfo_string52                 @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	16                              @ Abbrev [16] 0x2c9:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	278                             @ DW_AT_decl_line
	.long	695                             @ DW_AT_import
	.byte	16                              @ Abbrev [16] 0x2d1:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	279                             @ DW_AT_decl_line
	.long	606                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x2d9:0xb DW_TAG_typedef
	.long	740                             @ DW_AT_type
	.long	.Linfo_string55                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x2e4:0x7 DW_TAG_base_type
	.long	.Linfo_string54                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	16                              @ Abbrev [16] 0x2eb:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	280                             @ DW_AT_decl_line
	.long	729                             @ DW_AT_import
	.byte	16                              @ Abbrev [16] 0x2f3:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	281                             @ DW_AT_decl_line
	.long	519                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x2fb:0xb DW_TAG_typedef
	.long	774                             @ DW_AT_type
	.long	.Linfo_string57                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	65                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x306:0x7 DW_TAG_base_type
	.long	.Linfo_string56                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	16                              @ Abbrev [16] 0x30d:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	282                             @ DW_AT_decl_line
	.long	763                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x315:0xb DW_TAG_typedef
	.long	628                             @ DW_AT_type
	.long	.Linfo_string58                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	71                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x320:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	283                             @ DW_AT_decl_line
	.long	789                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x328:0xb DW_TAG_typedef
	.long	654                             @ DW_AT_type
	.long	.Linfo_string59                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x333:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	284                             @ DW_AT_decl_line
	.long	808                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x33b:0xb DW_TAG_typedef
	.long	680                             @ DW_AT_type
	.long	.Linfo_string60                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	73                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x346:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	285                             @ DW_AT_decl_line
	.long	827                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x34e:0xb DW_TAG_typedef
	.long	706                             @ DW_AT_type
	.long	.Linfo_string61                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x359:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	286                             @ DW_AT_decl_line
	.long	846                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x361:0xb DW_TAG_typedef
	.long	93                              @ DW_AT_type
	.long	.Linfo_string62                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	77                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x36c:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	287                             @ DW_AT_decl_line
	.long	865                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x374:0xb DW_TAG_typedef
	.long	740                             @ DW_AT_type
	.long	.Linfo_string63                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	78                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x37f:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	288                             @ DW_AT_decl_line
	.long	884                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x387:0xb DW_TAG_typedef
	.long	530                             @ DW_AT_type
	.long	.Linfo_string64                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	79                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x392:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	289                             @ DW_AT_decl_line
	.long	903                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x39a:0xb DW_TAG_typedef
	.long	774                             @ DW_AT_type
	.long	.Linfo_string65                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	80                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x3a5:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	290                             @ DW_AT_decl_line
	.long	922                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x3ad:0xb DW_TAG_typedef
	.long	680                             @ DW_AT_type
	.long	.Linfo_string66                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	85                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x3b8:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	291                             @ DW_AT_decl_line
	.long	941                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x3c0:0xb DW_TAG_typedef
	.long	680                             @ DW_AT_type
	.long	.Linfo_string67                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	86                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x3cb:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	292                             @ DW_AT_decl_line
	.long	960                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x3d3:0xb DW_TAG_typedef
	.long	680                             @ DW_AT_type
	.long	.Linfo_string68                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	87                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x3de:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	293                             @ DW_AT_decl_line
	.long	979                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x3e6:0xb DW_TAG_typedef
	.long	706                             @ DW_AT_type
	.long	.Linfo_string69                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	88                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x3f1:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	294                             @ DW_AT_decl_line
	.long	998                             @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x3f9:0xb DW_TAG_typedef
	.long	530                             @ DW_AT_type
	.long	.Linfo_string70                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	91                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x404:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	295                             @ DW_AT_decl_line
	.long	1017                            @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x40c:0xb DW_TAG_typedef
	.long	530                             @ DW_AT_type
	.long	.Linfo_string71                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	92                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x417:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	296                             @ DW_AT_decl_line
	.long	1036                            @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x41f:0xb DW_TAG_typedef
	.long	530                             @ DW_AT_type
	.long	.Linfo_string72                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	93                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x42a:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	297                             @ DW_AT_decl_line
	.long	1055                            @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x432:0xb DW_TAG_typedef
	.long	774                             @ DW_AT_type
	.long	.Linfo_string73                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	94                              @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x43d:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	298                             @ DW_AT_decl_line
	.long	1074                            @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x445:0xb DW_TAG_typedef
	.long	680                             @ DW_AT_type
	.long	.Linfo_string74                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	101                             @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x450:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	299                             @ DW_AT_decl_line
	.long	1093                            @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x458:0xb DW_TAG_typedef
	.long	530                             @ DW_AT_type
	.long	.Linfo_string75                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	102                             @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x463:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	300                             @ DW_AT_decl_line
	.long	1112                            @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x46b:0xb DW_TAG_typedef
	.long	706                             @ DW_AT_type
	.long	.Linfo_string76                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	106                             @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x476:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	301                             @ DW_AT_decl_line
	.long	1131                            @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x47e:0xb DW_TAG_typedef
	.long	774                             @ DW_AT_type
	.long	.Linfo_string77                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	107                             @ DW_AT_decl_line
	.byte	16                              @ Abbrev [16] 0x489:0x8 DW_TAG_imported_declaration
	.byte	3                               @ DW_AT_decl_file
	.short	302                             @ DW_AT_decl_line
	.long	1150                            @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x491:0xb DW_TAG_typedef
	.long	530                             @ DW_AT_type
	.long	.Linfo_string78                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	17                              @ Abbrev [17] 0x49c:0x7 DW_TAG_imported_declaration
	.byte	5                               @ DW_AT_decl_file
	.byte	107                             @ DW_AT_decl_line
	.long	1169                            @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x4a3:0xb DW_TAG_typedef
	.long	680                             @ DW_AT_type
	.long	.Linfo_string79                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	17                              @ Abbrev [17] 0x4ae:0x7 DW_TAG_imported_declaration
	.byte	5                               @ DW_AT_decl_file
	.byte	108                             @ DW_AT_decl_line
	.long	1187                            @ DW_AT_import
	.byte	12                              @ Abbrev [12] 0x4b5:0xb DW_TAG_typedef
	.long	1216                            @ DW_AT_type
	.long	.Linfo_string81                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	95                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x4c0:0x7 DW_TAG_base_type
	.long	.Linfo_string80                 @ DW_AT_name
	.byte	4                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	17                              @ Abbrev [17] 0x4c7:0x7 DW_TAG_imported_declaration
	.byte	5                               @ DW_AT_decl_file
	.byte	110                             @ DW_AT_decl_line
	.long	1205                            @ DW_AT_import
	.byte	18                              @ Abbrev [18] 0x4ce:0xf DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string84                 @ DW_AT_name
                                        @ DW_AT_artificial
	.byte	19                              @ Abbrev [19] 0x4dd:0x15 DW_TAG_subprogram
	.long	.Lfunc_begin1                   @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string85                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	69                              @ DW_AT_decl_line
	.long	680                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	20                              @ Abbrev [20] 0x4f2:0x62 DW_TAG_subprogram
	.long	.Lfunc_begin2                   @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string86                 @ DW_AT_linkage_name
	.long	.Linfo_string87                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	119                             @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0x507:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	32
	.long	.Linfo_string90                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	121                             @ DW_AT_decl_line
	.long	1426                            @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0x515:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string106                @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	122                             @ DW_AT_decl_line
	.long	1616                            @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0x523:0x18 DW_TAG_lexical_block
	.long	.Ltmp5                          @ DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   @ DW_AT_high_pc
	.byte	21                              @ Abbrev [21] 0x52c:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string113                @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	126                             @ DW_AT_decl_line
	.long	514                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	22                              @ Abbrev [22] 0x53b:0x18 DW_TAG_lexical_block
	.long	.Ltmp7                          @ DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   @ DW_AT_high_pc
	.byte	21                              @ Abbrev [21] 0x544:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string113                @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	127                             @ DW_AT_decl_line
	.long	514                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	23                              @ Abbrev [23] 0x554:0xd DW_TAG_subprogram
	.long	.Linfo_string82                 @ DW_AT_linkage_name
	.long	.Linfo_string83                 @ DW_AT_name
	.byte	7                               @ DW_AT_decl_file
	.short	750                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_inline
	.byte	24                              @ Abbrev [24] 0x561:0x22 DW_TAG_subprogram
	.long	.Lfunc_begin3                   @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string88                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	172                             @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	25                              @ Abbrev [25] 0x572:0x10 DW_TAG_inlined_subroutine
	.long	1364                            @ DW_AT_abstract_origin
	.long	.Lfunc_begin3                   @ DW_AT_low_pc
	.long	.Ltmp18-.Lfunc_begin3           @ DW_AT_high_pc
	.byte	1                               @ DW_AT_call_file
	.byte	176                             @ DW_AT_call_line
	.byte	5                               @ DW_AT_call_column
	.byte	0                               @ End Of Children Mark
	.byte	26                              @ Abbrev [26] 0x583:0xf DW_TAG_subprogram
	.long	.Lfunc_begin4                   @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string89                 @ DW_AT_linkage_name
                                        @ DW_AT_artificial
	.byte	12                              @ Abbrev [12] 0x592:0xb DW_TAG_typedef
	.long	1437                            @ DW_AT_type
	.long	.Linfo_string105                @ DW_AT_name
	.byte	8                               @ DW_AT_decl_file
	.byte	70                              @ DW_AT_decl_line
	.byte	27                              @ Abbrev [27] 0x59d:0x5a DW_TAG_structure_type
	.byte	5                               @ DW_AT_calling_convention
	.byte	48                              @ DW_AT_byte_size
	.byte	8                               @ DW_AT_decl_file
	.byte	49                              @ DW_AT_decl_line
	.byte	28                              @ Abbrev [28] 0x5a2:0xc DW_TAG_member
	.long	.Linfo_string91                 @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x5ae:0xc DW_TAG_member
	.long	.Linfo_string92                 @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	54                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x5ba:0xc DW_TAG_member
	.long	.Linfo_string93                 @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x5c6:0xc DW_TAG_member
	.long	.Linfo_string94                 @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x5d2:0xc DW_TAG_member
	.long	.Linfo_string95                 @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x5de:0xc DW_TAG_member
	.long	.Linfo_string96                 @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	66                              @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x5ea:0xc DW_TAG_member
	.long	.Linfo_string97                 @ DW_AT_name
	.long	1527                            @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	69                              @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	12                              @ Abbrev [12] 0x5f7:0xb DW_TAG_typedef
	.long	1538                            @ DW_AT_type
	.long	.Linfo_string104                @ DW_AT_name
	.byte	9                               @ DW_AT_decl_file
	.byte	73                              @ DW_AT_decl_line
	.byte	27                              @ Abbrev [27] 0x602:0x4e DW_TAG_structure_type
	.byte	5                               @ DW_AT_calling_convention
	.byte	24                              @ DW_AT_byte_size
	.byte	9                               @ DW_AT_decl_file
	.byte	45                              @ DW_AT_decl_line
	.byte	28                              @ Abbrev [28] 0x607:0xc DW_TAG_member
	.long	.Linfo_string98                 @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	9                               @ DW_AT_decl_file
	.byte	47                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x613:0xc DW_TAG_member
	.long	.Linfo_string99                 @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	9                               @ DW_AT_decl_file
	.byte	50                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x61f:0xc DW_TAG_member
	.long	.Linfo_string100                @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	9                               @ DW_AT_decl_file
	.byte	53                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x62b:0xc DW_TAG_member
	.long	.Linfo_string101                @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	9                               @ DW_AT_decl_file
	.byte	56                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x637:0xc DW_TAG_member
	.long	.Linfo_string102                @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	9                               @ DW_AT_decl_file
	.byte	60                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x643:0xc DW_TAG_member
	.long	.Linfo_string103                @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	9                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	12                              @ Abbrev [12] 0x650:0xb DW_TAG_typedef
	.long	1627                            @ DW_AT_type
	.long	.Linfo_string112                @ DW_AT_name
	.byte	8                               @ DW_AT_decl_file
	.byte	92                              @ DW_AT_decl_line
	.byte	27                              @ Abbrev [27] 0x65b:0x42 DW_TAG_structure_type
	.byte	5                               @ DW_AT_calling_convention
	.byte	20                              @ DW_AT_byte_size
	.byte	8                               @ DW_AT_decl_file
	.byte	75                              @ DW_AT_decl_line
	.byte	28                              @ Abbrev [28] 0x660:0xc DW_TAG_member
	.long	.Linfo_string107                @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	77                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x66c:0xc DW_TAG_member
	.long	.Linfo_string108                @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	80                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x678:0xc DW_TAG_member
	.long	.Linfo_string109                @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	83                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x684:0xc DW_TAG_member
	.long	.Linfo_string110                @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	86                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	28                              @ Abbrev [28] 0x690:0xc DW_TAG_member
	.long	.Linfo_string111                @ DW_AT_name
	.long	519                             @ DW_AT_type
	.byte	8                               @ DW_AT_decl_file
	.byte	89                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.long	0
	.long	0
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]" @ string offset=0
.Linfo_string1:
	.asciz	"../Core/Src\\main.c"           @ string offset=68
.Linfo_string2:
	.asciz	"D:\\2026RoboMaster\\ClionProj\\1012_SPI\\MDK-ARM" @ string offset=87
.Linfo_string3:
	.asciz	"rc"                            @ string offset=132
.Linfo_string4:
	.asciz	"Controller"                    @ string offset=135
.Linfo_string5:
	.asciz	"unsigned char"                 @ string offset=146
.Linfo_string6:
	.asciz	"HAL_OK"                        @ string offset=160
.Linfo_string7:
	.asciz	"HAL_ERROR"                     @ string offset=167
.Linfo_string8:
	.asciz	"HAL_BUSY"                      @ string offset=177
.Linfo_string9:
	.asciz	"HAL_TIMEOUT"                   @ string offset=186
.Linfo_string10:
	.asciz	"CR"                            @ string offset=198
.Linfo_string11:
	.asciz	"unsigned int"                  @ string offset=201
.Linfo_string12:
	.asciz	"uint32_t"                      @ string offset=214
.Linfo_string13:
	.asciz	"PLLCFGR"                       @ string offset=223
.Linfo_string14:
	.asciz	"CFGR"                          @ string offset=231
.Linfo_string15:
	.asciz	"CIR"                           @ string offset=236
.Linfo_string16:
	.asciz	"AHB1RSTR"                      @ string offset=240
.Linfo_string17:
	.asciz	"AHB2RSTR"                      @ string offset=249
.Linfo_string18:
	.asciz	"AHB3RSTR"                      @ string offset=258
.Linfo_string19:
	.asciz	"RESERVED0"                     @ string offset=267
.Linfo_string20:
	.asciz	"APB1RSTR"                      @ string offset=277
.Linfo_string21:
	.asciz	"APB2RSTR"                      @ string offset=286
.Linfo_string22:
	.asciz	"RESERVED1"                     @ string offset=295
.Linfo_string23:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=305
.Linfo_string24:
	.asciz	"AHB1ENR"                       @ string offset=325
.Linfo_string25:
	.asciz	"AHB2ENR"                       @ string offset=333
.Linfo_string26:
	.asciz	"AHB3ENR"                       @ string offset=341
.Linfo_string27:
	.asciz	"RESERVED2"                     @ string offset=349
.Linfo_string28:
	.asciz	"APB1ENR"                       @ string offset=359
.Linfo_string29:
	.asciz	"APB2ENR"                       @ string offset=367
.Linfo_string30:
	.asciz	"RESERVED3"                     @ string offset=375
.Linfo_string31:
	.asciz	"AHB1LPENR"                     @ string offset=385
.Linfo_string32:
	.asciz	"AHB2LPENR"                     @ string offset=395
.Linfo_string33:
	.asciz	"AHB3LPENR"                     @ string offset=405
.Linfo_string34:
	.asciz	"RESERVED4"                     @ string offset=415
.Linfo_string35:
	.asciz	"APB1LPENR"                     @ string offset=425
.Linfo_string36:
	.asciz	"APB2LPENR"                     @ string offset=435
.Linfo_string37:
	.asciz	"RESERVED5"                     @ string offset=445
.Linfo_string38:
	.asciz	"BDCR"                          @ string offset=455
.Linfo_string39:
	.asciz	"CSR"                           @ string offset=460
.Linfo_string40:
	.asciz	"RESERVED6"                     @ string offset=464
.Linfo_string41:
	.asciz	"SSCGR"                         @ string offset=474
.Linfo_string42:
	.asciz	"PLLI2SCFGR"                    @ string offset=480
.Linfo_string43:
	.asciz	"RCC_TypeDef"                   @ string offset=491
.Linfo_string44:
	.asciz	"PWR_TypeDef"                   @ string offset=503
.Linfo_string45:
	.asciz	"uint8_t"                       @ string offset=515
.Linfo_string46:
	.asciz	"signed char"                   @ string offset=523
.Linfo_string47:
	.asciz	"int8_t"                        @ string offset=535
.Linfo_string48:
	.asciz	"short"                         @ string offset=542
.Linfo_string49:
	.asciz	"int16_t"                       @ string offset=548
.Linfo_string50:
	.asciz	"int"                           @ string offset=556
.Linfo_string51:
	.asciz	"int32_t"                       @ string offset=560
.Linfo_string52:
	.asciz	"long long"                     @ string offset=568
.Linfo_string53:
	.asciz	"int64_t"                       @ string offset=578
.Linfo_string54:
	.asciz	"unsigned short"                @ string offset=586
.Linfo_string55:
	.asciz	"uint16_t"                      @ string offset=601
.Linfo_string56:
	.asciz	"unsigned long long"            @ string offset=610
.Linfo_string57:
	.asciz	"uint64_t"                      @ string offset=629
.Linfo_string58:
	.asciz	"int_least8_t"                  @ string offset=638
.Linfo_string59:
	.asciz	"int_least16_t"                 @ string offset=651
.Linfo_string60:
	.asciz	"int_least32_t"                 @ string offset=665
.Linfo_string61:
	.asciz	"int_least64_t"                 @ string offset=679
.Linfo_string62:
	.asciz	"uint_least8_t"                 @ string offset=693
.Linfo_string63:
	.asciz	"uint_least16_t"                @ string offset=707
.Linfo_string64:
	.asciz	"uint_least32_t"                @ string offset=722
.Linfo_string65:
	.asciz	"uint_least64_t"                @ string offset=737
.Linfo_string66:
	.asciz	"int_fast8_t"                   @ string offset=752
.Linfo_string67:
	.asciz	"int_fast16_t"                  @ string offset=764
.Linfo_string68:
	.asciz	"int_fast32_t"                  @ string offset=777
.Linfo_string69:
	.asciz	"int_fast64_t"                  @ string offset=790
.Linfo_string70:
	.asciz	"uint_fast8_t"                  @ string offset=803
.Linfo_string71:
	.asciz	"uint_fast16_t"                 @ string offset=816
.Linfo_string72:
	.asciz	"uint_fast32_t"                 @ string offset=830
.Linfo_string73:
	.asciz	"uint_fast64_t"                 @ string offset=844
.Linfo_string74:
	.asciz	"intptr_t"                      @ string offset=858
.Linfo_string75:
	.asciz	"uintptr_t"                     @ string offset=867
.Linfo_string76:
	.asciz	"intmax_t"                      @ string offset=877
.Linfo_string77:
	.asciz	"uintmax_t"                     @ string offset=886
.Linfo_string78:
	.asciz	"size_t"                        @ string offset=896
.Linfo_string79:
	.asciz	"ptrdiff_t"                     @ string offset=903
.Linfo_string80:
	.asciz	"long double"                   @ string offset=913
.Linfo_string81:
	.asciz	"max_align_t"                   @ string offset=925
.Linfo_string82:
	.asciz	"_ZL13__disable_irqv"           @ string offset=937
.Linfo_string83:
	.asciz	"__disable_irq"                 @ string offset=957
.Linfo_string84:
	.asciz	"__cxx_global_var_init"         @ string offset=971
.Linfo_string85:
	.asciz	"main"                          @ string offset=993
.Linfo_string86:
	.asciz	"_Z18SystemClock_Configv"       @ string offset=998
.Linfo_string87:
	.asciz	"SystemClock_Config"            @ string offset=1022
.Linfo_string88:
	.asciz	"Error_Handler"                 @ string offset=1041
.Linfo_string89:
	.asciz	"_GLOBAL__sub_I_main.c"         @ string offset=1055
.Linfo_string90:
	.asciz	"RCC_OscInitStruct"             @ string offset=1077
.Linfo_string91:
	.asciz	"OscillatorType"                @ string offset=1095
.Linfo_string92:
	.asciz	"HSEState"                      @ string offset=1110
.Linfo_string93:
	.asciz	"LSEState"                      @ string offset=1119
.Linfo_string94:
	.asciz	"HSIState"                      @ string offset=1128
.Linfo_string95:
	.asciz	"HSICalibrationValue"           @ string offset=1137
.Linfo_string96:
	.asciz	"LSIState"                      @ string offset=1157
.Linfo_string97:
	.asciz	"PLL"                           @ string offset=1166
.Linfo_string98:
	.asciz	"PLLState"                      @ string offset=1170
.Linfo_string99:
	.asciz	"PLLSource"                     @ string offset=1179
.Linfo_string100:
	.asciz	"PLLM"                          @ string offset=1189
.Linfo_string101:
	.asciz	"PLLN"                          @ string offset=1194
.Linfo_string102:
	.asciz	"PLLP"                          @ string offset=1199
.Linfo_string103:
	.asciz	"PLLQ"                          @ string offset=1204
.Linfo_string104:
	.asciz	"RCC_PLLInitTypeDef"            @ string offset=1209
.Linfo_string105:
	.asciz	"RCC_OscInitTypeDef"            @ string offset=1228
.Linfo_string106:
	.asciz	"RCC_ClkInitStruct"             @ string offset=1247
.Linfo_string107:
	.asciz	"ClockType"                     @ string offset=1265
.Linfo_string108:
	.asciz	"SYSCLKSource"                  @ string offset=1275
.Linfo_string109:
	.asciz	"AHBCLKDivider"                 @ string offset=1288
.Linfo_string110:
	.asciz	"APB1CLKDivider"                @ string offset=1302
.Linfo_string111:
	.asciz	"APB2CLKDivider"                @ string offset=1317
.Linfo_string112:
	.asciz	"RCC_ClkInitTypeDef"            @ string offset=1332
.Linfo_string113:
	.asciz	"tmpreg"                        @ string offset=1351
	.ident	"Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]"
	.section	".note.GNU-stack","",%progbits
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:

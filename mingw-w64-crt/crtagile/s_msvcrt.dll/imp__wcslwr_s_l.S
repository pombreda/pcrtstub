//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__wcslwr_s_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._wcslwr_s_l,"w"
	.globl __imp__wcslwr_s_l
	.align 8
__imp__wcslwr_s_l:
	.quad 0
	.section .rdata, "dr"
__imp__wcslwr_s_l_name:
	.ascii "_wcslwr_s_l"
	.section .rdata$imp.msvcrt.dll._wcslwr_s_l, "dr"
	.align 8
	.quad __imp__wcslwr_s_l_name, __imp__wcslwr_s_l
#elif __i386__
	.section .data$msvcrt.dll.iat._wcslwr_s_l, "w"
	.align 4
	.globl __imp___wcslwr_s_l
__imp___wcslwr_s_l:
	.long 0
	.section .rdata, "dr"
__imp___wcslwr_s_l_name:
	.ascii "_wcslwr_s_l"
	.section .rdata$imp.msvcrt.dll._wcslwr_s_l, "dr"
	.align 4
	.long __imp__wcslwr_s_l__name, __imp___wcslwr_s_l
#else
#error "Unknown target"
#endif

//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_getc.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.getc,"w"
	.globl __imp_getc
	.align 8
__imp_getc:
	.quad 0
	.section .rdata, "dr"
__imp_getc_name:
	.ascii "getc"
	.section .rdata$imp.msvcrt.dll.getc, "dr"
	.align 8
	.quad __imp_getc_name, __imp_getc
#elif __i386__
	.section .data$msvcrt.dll.iat.getc, "w"
	.align 4
	.globl __imp__getc
__imp__getc:
	.long 0
	.section .rdata, "dr"
__imp__getc_name:
	.ascii "getc"
	.section .rdata$imp.msvcrt.dll.getc, "dr"
	.align 4
	.long __imp_getc__name, __imp__getc
#else
#error "Unknown target"
#endif

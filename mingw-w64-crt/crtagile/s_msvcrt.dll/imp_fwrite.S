//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_fwrite.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.fwrite,"w"
	.globl __imp_fwrite
	.align 8
__imp_fwrite:
	.quad 0
	.section .rdata, "dr"
__imp_fwrite_name:
	.ascii "fwrite"
	.section .rdata$imp.msvcrt.dll.fwrite, "dr"
	.align 8
	.quad __imp_fwrite_name, __imp_fwrite
#elif __i386__
	.section .data$msvcrt.dll.iat.fwrite, "w"
	.align 4
	.globl __imp__fwrite
__imp__fwrite:
	.long 0
	.section .rdata, "dr"
__imp__fwrite_name:
	.ascii "fwrite"
	.section .rdata$imp.msvcrt.dll.fwrite, "dr"
	.align 4
	.long __imp_fwrite__name, __imp__fwrite
#else
#error "Unknown target"
#endif

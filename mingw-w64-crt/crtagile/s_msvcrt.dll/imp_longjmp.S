//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_longjmp.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.longjmp,"w"
	.globl __imp_longjmp
	.align 8
__imp_longjmp:
	.quad 0
	.section .rdata, "dr"
__imp_longjmp_name:
	.ascii "longjmp"
	.section .rdata$imp.msvcrt.dll.longjmp, "dr"
	.align 8
	.quad __imp_longjmp_name, __imp_longjmp
#elif __i386__
	.section .data$msvcrt.dll.iat.longjmp, "w"
	.align 4
	.globl __imp__longjmp
__imp__longjmp:
	.long 0
	.section .rdata, "dr"
__imp__longjmp_name:
	.ascii "longjmp"
	.section .rdata$imp.msvcrt.dll.longjmp, "dr"
	.align 4
	.long __imp_longjmp__name, __imp__longjmp
#else
#error "Unknown target"
#endif

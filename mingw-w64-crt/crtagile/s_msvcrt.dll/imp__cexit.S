//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__cexit.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._cexit,"w"
	.globl __imp__cexit
	.align 8
__imp__cexit:
	.quad 0
	.section .rdata, "dr"
__imp__cexit_name:
	.ascii "_cexit"
	.section .rdata$imp.msvcrt.dll._cexit, "dr"
	.align 8
	.quad __imp__cexit_name, __imp__cexit
#elif __i386__
	.section .data$msvcrt.dll.iat._cexit, "w"
	.align 4
	.globl __imp___cexit
__imp___cexit:
	.long 0
	.section .rdata, "dr"
__imp___cexit_name:
	.ascii "_cexit"
	.section .rdata$imp.msvcrt.dll._cexit, "dr"
	.align 4
	.long __imp__cexit__name, __imp___cexit
#else
#error "Unknown target"
#endif

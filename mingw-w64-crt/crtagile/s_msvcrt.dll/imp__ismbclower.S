//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__ismbclower.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._ismbclower,"w"
	.globl __imp__ismbclower
	.align 8
__imp__ismbclower:
	.quad 0
	.section .rdata, "dr"
__imp__ismbclower_name:
	.ascii "_ismbclower"
	.section .rdata$imp.msvcrt.dll._ismbclower, "dr"
	.align 8
	.quad __imp__ismbclower_name, __imp__ismbclower
#elif __i386__
	.section .data$msvcrt.dll.iat._ismbclower, "w"
	.align 4
	.globl __imp___ismbclower
__imp___ismbclower:
	.long 0
	.section .rdata, "dr"
__imp___ismbclower_name:
	.ascii "_ismbclower"
	.section .rdata$imp.msvcrt.dll._ismbclower, "dr"
	.align 4
	.long __imp__ismbclower__name, __imp___ismbclower
#else
#error "Unknown target"
#endif

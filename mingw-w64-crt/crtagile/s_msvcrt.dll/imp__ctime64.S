//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__ctime64.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._ctime64,"w"
	.globl __imp__ctime64
	.align 8
__imp__ctime64:
	.quad 0
	.section .rdata, "dr"
__imp__ctime64_name:
	.ascii "_ctime64"
	.section .rdata$imp.msvcrt.dll._ctime64, "dr"
	.align 8
	.quad __imp__ctime64_name, __imp__ctime64
#elif __i386__
	.section .data$msvcrt.dll.iat._ctime64, "w"
	.align 4
	.globl __imp___ctime64
__imp___ctime64:
	.long 0
	.section .rdata, "dr"
__imp___ctime64_name:
	.ascii "_ctime64"
	.section .rdata$imp.msvcrt.dll._ctime64, "dr"
	.align 4
	.long __imp__ctime64__name, __imp___ctime64
#else
#error "Unknown target"
#endif

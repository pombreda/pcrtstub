//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__rotl64.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._rotl64,"w"
	.globl __imp__rotl64
	.align 8
__imp__rotl64:
	.quad 0
	.section .rdata, "dr"
__imp__rotl64_name:
	.ascii "_rotl64"
	.section .rdata$imp.msvcrt.dll._rotl64, "dr"
	.align 8
	.quad __imp__rotl64_name, __imp__rotl64
#elif __i386__
	.section .data$msvcrt.dll.iat._rotl64, "w"
	.align 4
	.globl __imp___rotl64
__imp___rotl64:
	.long 0
	.section .rdata, "dr"
__imp___rotl64_name:
	.ascii "_rotl64"
	.section .rdata$imp.msvcrt.dll._rotl64, "dr"
	.align 4
	.long __imp__rotl64__name, __imp___rotl64
#else
#error "Unknown target"
#endif

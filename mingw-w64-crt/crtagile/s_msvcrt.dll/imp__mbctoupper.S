//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__mbctoupper.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._mbctoupper,"w"
	.globl __imp__mbctoupper
	.align 8
__imp__mbctoupper:
	.quad 0
	.section .rdata, "dr"
__imp__mbctoupper_name:
	.ascii "_mbctoupper"
	.section .rdata$imp.msvcrt.dll._mbctoupper, "dr"
	.align 8
	.quad __imp__mbctoupper_name, __imp__mbctoupper
#elif __i386__
	.section .data$msvcrt.dll.iat._mbctoupper, "w"
	.align 4
	.globl __imp___mbctoupper
__imp___mbctoupper:
	.long 0
	.section .rdata, "dr"
__imp___mbctoupper_name:
	.ascii "_mbctoupper"
	.section .rdata$imp.msvcrt.dll._mbctoupper, "dr"
	.align 4
	.long __imp__mbctoupper__name, __imp___mbctoupper
#else
#error "Unknown target"
#endif

//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__mkgmtime.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._mkgmtime,"w"
	.globl __imp__mkgmtime
	.align 8
__imp__mkgmtime:
	.quad 0
	.section .rdata, "dr"
__imp__mkgmtime_name:
	.ascii "_mkgmtime"
	.section .rdata$imp.msvcrt.dll._mkgmtime, "dr"
	.align 8
	.quad __imp__mkgmtime_name, __imp__mkgmtime
#elif __i386__
	.section .data$msvcrt.dll.iat._mkgmtime, "w"
	.align 4
	.globl __imp___mkgmtime
__imp___mkgmtime:
	.long 0
	.section .rdata, "dr"
__imp___mkgmtime_name:
	.ascii "_mkgmtime"
	.section .rdata$imp.msvcrt.dll._mkgmtime, "dr"
	.align 4
	.long __imp__mkgmtime__name, __imp___mkgmtime
#else
#error "Unknown target"
#endif

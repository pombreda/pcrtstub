//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__wexecve.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._wexecve,"w"
	.globl __imp__wexecve
	.align 8
__imp__wexecve:
	.quad 0
	.section .rdata, "dr"
__imp__wexecve_name:
	.ascii "_wexecve"
	.section .rdata$imp.msvcrt.dll._wexecve, "dr"
	.align 8
	.quad __imp__wexecve_name, __imp__wexecve
#elif __i386__
	.section .data$msvcrt.dll.iat._wexecve, "w"
	.align 4
	.globl __imp___wexecve
__imp___wexecve:
	.long 0
	.section .rdata, "dr"
__imp___wexecve_name:
	.ascii "_wexecve"
	.section .rdata$imp.msvcrt.dll._wexecve, "dr"
	.align 4
	.long __imp__wexecve__name, __imp___wexecve
#else
#error "Unknown target"
#endif

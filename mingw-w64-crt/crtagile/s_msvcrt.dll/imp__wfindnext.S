//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__wfindnext.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._wfindnext,"w"
	.globl __imp__wfindnext
	.align 8
__imp__wfindnext:
	.quad 0
	.section .rdata, "dr"
__imp__wfindnext_name:
	.ascii "_wfindnext"
	.section .rdata$imp.msvcrt.dll._wfindnext, "dr"
	.align 8
	.quad __imp__wfindnext_name, __imp__wfindnext
#elif __i386__
	.section .data$msvcrt.dll.iat._wfindnext, "w"
	.align 4
	.globl __imp___wfindnext
__imp___wfindnext:
	.long 0
	.section .rdata, "dr"
__imp___wfindnext_name:
	.ascii "_wfindnext"
	.section .rdata$imp.msvcrt.dll._wfindnext, "dr"
	.align 4
	.long __imp__wfindnext__name, __imp___wfindnext
#else
#error "Unknown target"
#endif

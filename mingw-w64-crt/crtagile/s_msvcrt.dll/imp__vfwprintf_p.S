//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__vfwprintf_p.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._vfwprintf_p,"w"
	.globl __imp__vfwprintf_p
	.align 8
__imp__vfwprintf_p:
	.quad 0
	.section .rdata, "dr"
__imp__vfwprintf_p_name:
	.ascii "_vfwprintf_p"
	.section .rdata$imp.msvcrt.dll._vfwprintf_p, "dr"
	.align 8
	.quad __imp__vfwprintf_p_name, __imp__vfwprintf_p
#elif __i386__
	.section .data$msvcrt.dll.iat._vfwprintf_p, "w"
	.align 4
	.globl __imp___vfwprintf_p
__imp___vfwprintf_p:
	.long 0
	.section .rdata, "dr"
__imp___vfwprintf_p_name:
	.ascii "_vfwprintf_p"
	.section .rdata$imp.msvcrt.dll._vfwprintf_p, "dr"
	.align 4
	.long __imp__vfwprintf_p__name, __imp___vfwprintf_p
#else
#error "Unknown target"
#endif

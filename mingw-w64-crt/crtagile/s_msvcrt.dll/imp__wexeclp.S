//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__wexeclp.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._wexeclp,"w"
	.globl __imp__wexeclp
	.align 8
__imp__wexeclp:
	.quad 0
	.section .rdata, "dr"
__imp__wexeclp_name:
	.ascii "_wexeclp"
	.section .rdata$imp.msvcrt.dll._wexeclp, "dr"
	.align 8
	.quad __imp__wexeclp_name, __imp__wexeclp
#elif __i386__
	.section .data$msvcrt.dll.iat._wexeclp, "w"
	.align 4
	.globl __imp___wexeclp
__imp___wexeclp:
	.long 0
	.section .rdata, "dr"
__imp___wexeclp_name:
	.ascii "_wexeclp"
	.section .rdata$imp.msvcrt.dll._wexeclp, "dr"
	.align 4
	.long __imp__wexeclp__name, __imp___wexeclp
#else
#error "Unknown target"
#endif

//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__wspawnlp.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._wspawnlp,"w"
	.globl __imp__wspawnlp
	.align 8
__imp__wspawnlp:
	.quad 0
	.section .rdata, "dr"
__imp__wspawnlp_name:
	.ascii "_wspawnlp"
	.section .rdata$imp.msvcrt.dll._wspawnlp, "dr"
	.align 8
	.quad __imp__wspawnlp_name, __imp__wspawnlp
#elif __i386__
	.section .data$msvcrt.dll.iat._wspawnlp, "w"
	.align 4
	.globl __imp___wspawnlp
__imp___wspawnlp:
	.long 0
	.section .rdata, "dr"
__imp___wspawnlp_name:
	.ascii "_wspawnlp"
	.section .rdata$imp.msvcrt.dll._wspawnlp, "dr"
	.align 4
	.long __imp__wspawnlp__name, __imp___wspawnlp
#else
#error "Unknown target"
#endif

//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_wcslen.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.wcslen,"w"
	.globl __imp_wcslen
	.align 8
__imp_wcslen:
	.quad 0
	.section .rdata, "dr"
__imp_wcslen_name:
	.ascii "wcslen"
	.section .rdata$imp.msvcrt.dll.wcslen, "dr"
	.align 8
	.quad __imp_wcslen_name, __imp_wcslen
#elif __i386__
	.section .data$msvcrt.dll.iat.wcslen, "w"
	.align 4
	.globl __imp__wcslen
__imp__wcslen:
	.long 0
	.section .rdata, "dr"
__imp__wcslen_name:
	.ascii "wcslen"
	.section .rdata$imp.msvcrt.dll.wcslen, "dr"
	.align 4
	.long __imp_wcslen__name, __imp__wcslen
#else
#error "Unknown target"
#endif

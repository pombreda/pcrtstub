//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_wcstok.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.wcstok,"w"
	.globl __imp_wcstok
	.align 8
__imp_wcstok:
	.quad 0
	.section .rdata, "dr"
__imp_wcstok_name:
	.ascii "wcstok"
	.section .rdata$imp.msvcrt.dll.wcstok, "dr"
	.align 8
	.quad __imp_wcstok_name, __imp_wcstok
#elif __i386__
	.section .data$msvcrt.dll.iat.wcstok, "w"
	.align 4
	.globl __imp__wcstok
__imp__wcstok:
	.long 0
	.section .rdata, "dr"
__imp__wcstok_name:
	.ascii "wcstok"
	.section .rdata$imp.msvcrt.dll.wcstok, "dr"
	.align 4
	.long __imp_wcstok__name, __imp__wcstok
#else
#error "Unknown target"
#endif

//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_wcschr.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.wcschr,"w"
	.globl __imp_wcschr
	.align 8
__imp_wcschr:
	.quad 0
	.section .rdata, "dr"
__imp_wcschr_name:
	.ascii "wcschr"
	.section .rdata$imp.msvcrt.dll.wcschr, "dr"
	.align 8
	.quad __imp_wcschr_name, __imp_wcschr
#elif __i386__
	.section .data$msvcrt.dll.iat.wcschr, "w"
	.align 4
	.globl __imp__wcschr
__imp__wcschr:
	.long 0
	.section .rdata, "dr"
__imp__wcschr_name:
	.ascii "wcschr"
	.section .rdata$imp.msvcrt.dll.wcschr, "dr"
	.align 4
	.long __imp_wcschr__name, __imp__wcschr
#else
#error "Unknown target"
#endif

/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub____lc_codepage_func.S"
	.text
#ifdef __x86_64__
	.globl ___lc_codepage_func
___lc_codepage_func:
	jmp *__imp____lc_codepage_func(%rip)
#elif __i386__
	.globl ____lc_codepage_func
____lc_codepage_func:
	jmp *__imp_____lc_codepage_func
#else
#error "Unknown target"
#endif

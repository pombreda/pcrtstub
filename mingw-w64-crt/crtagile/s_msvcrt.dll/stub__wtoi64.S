/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wtoi64.S"
	.text
#ifdef __x86_64__
	.globl _wtoi64
_wtoi64:
	jmp *__imp__wtoi64(%rip)
#elif __i386__
	.globl __wtoi64
__wtoi64:
	jmp *__imp___wtoi64
#else
#error "Unknown target"
#endif

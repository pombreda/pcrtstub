/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wtoi64_l.S"
	.text
#ifdef __x86_64__
	.globl _wtoi64_l
_wtoi64_l:
	jmp *__imp__wtoi64_l(%rip)
#elif __i386__
	.globl __wtoi64_l
__wtoi64_l:
	jmp *__imp___wtoi64_l
#else
#error "Unknown target"
#endif

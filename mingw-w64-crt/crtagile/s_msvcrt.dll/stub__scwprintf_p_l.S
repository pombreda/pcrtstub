/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__scwprintf_p_l.S"
	.text
#ifdef __x86_64__
	.globl _scwprintf_p_l
_scwprintf_p_l:
	jmp *__imp__scwprintf_p_l(%rip)
#elif __i386__
	.globl __scwprintf_p_l
__scwprintf_p_l:
	jmp *__imp___scwprintf_p_l
#else
#error "Unknown target"
#endif

/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_fputwchar.S"
	.text
#ifdef __x86_64__
	.globl fputwchar
fputwchar:
	jmp *__imp_fputwchar(%rip)
#elif __i386__
	.globl _fputwchar
_fputwchar:
	jmp *__imp__fputwchar
#else
#error "Unknown target"
#endif

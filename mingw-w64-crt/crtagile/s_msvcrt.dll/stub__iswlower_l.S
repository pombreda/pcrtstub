/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__iswlower_l.S"
	.text
#ifdef __x86_64__
	.globl _iswlower_l
_iswlower_l:
	jmp *__imp__iswlower_l(%rip)
#elif __i386__
	.globl __iswlower_l
__iswlower_l:
	jmp *__imp___iswlower_l
#else
#error "Unknown target"
#endif

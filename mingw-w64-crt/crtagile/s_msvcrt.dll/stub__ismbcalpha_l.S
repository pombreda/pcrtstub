/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__ismbcalpha_l.S"
	.text
#ifdef __x86_64__
	.globl _ismbcalpha_l
_ismbcalpha_l:
	jmp *__imp__ismbcalpha_l(%rip)
#elif __i386__
	.globl __ismbcalpha_l
__ismbcalpha_l:
	jmp *__imp___ismbcalpha_l
#else
#error "Unknown target"
#endif

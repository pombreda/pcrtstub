/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wctime64.S"
	.text
#ifdef __x86_64__
	.globl _wctime64
_wctime64:
	jmp *__imp__wctime64(%rip)
#elif __i386__
	.globl __wctime64
__wctime64:
	jmp *__imp___wctime64
#else
#error "Unknown target"
#endif

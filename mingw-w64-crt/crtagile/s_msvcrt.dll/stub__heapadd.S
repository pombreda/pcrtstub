/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__heapadd.S"
	.text
#ifdef __x86_64__
	.globl _heapadd
_heapadd:
	jmp *__imp__heapadd(%rip)
#elif __i386__
	.globl __heapadd
__heapadd:
	jmp *__imp___heapadd
#else
#error "Unknown target"
#endif

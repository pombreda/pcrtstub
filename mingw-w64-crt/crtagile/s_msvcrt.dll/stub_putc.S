/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_putc.S"
	.text
#ifdef __x86_64__
	.globl putc
putc:
	jmp *__imp_putc(%rip)
#elif __i386__
	.globl _putc
_putc:
	jmp *__imp__putc
#else
#error "Unknown target"
#endif

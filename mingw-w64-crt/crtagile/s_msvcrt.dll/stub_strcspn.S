/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_strcspn.S"
	.text
#ifdef __x86_64__
	.globl strcspn
strcspn:
	jmp *__imp_strcspn(%rip)
#elif __i386__
	.globl _strcspn
_strcspn:
	jmp *__imp__strcspn
#else
#error "Unknown target"
#endif

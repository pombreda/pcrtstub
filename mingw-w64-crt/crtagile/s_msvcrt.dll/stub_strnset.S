/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_strnset.S"
	.text
#ifdef __x86_64__
	.globl strnset
strnset:
	jmp *__imp_strnset(%rip)
#elif __i386__
	.globl _strnset
_strnset:
	jmp *__imp__strnset
#else
#error "Unknown target"
#endif

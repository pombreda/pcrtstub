/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wgetenv_s.S"
	.text
#ifdef __x86_64__
	.globl _wgetenv_s
_wgetenv_s:
	jmp *__imp__wgetenv_s(%rip)
#elif __i386__
	.globl __wgetenv_s
__wgetenv_s:
	jmp *__imp___wgetenv_s
#else
#error "Unknown target"
#endif

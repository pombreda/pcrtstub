/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub___getmainargs.S"
	.text
#ifdef __x86_64__
	.globl __getmainargs
__getmainargs:
	jmp *__imp___getmainargs(%rip)
#elif __i386__
	.globl ___getmainargs
___getmainargs:
	jmp *__imp____getmainargs
#else
#error "Unknown target"
#endif

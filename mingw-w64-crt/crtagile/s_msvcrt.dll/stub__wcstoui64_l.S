/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wcstoui64_l.S"
	.text
#ifdef __x86_64__
	.globl _wcstoui64_l
_wcstoui64_l:
	jmp *__imp__wcstoui64_l(%rip)
#elif __i386__
	.globl __wcstoui64_l
__wcstoui64_l:
	jmp *__imp___wcstoui64_l
#else
#error "Unknown target"
#endif

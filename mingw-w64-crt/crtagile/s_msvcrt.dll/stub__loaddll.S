/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__loaddll.S"
	.text
#ifdef __x86_64__
	.globl _loaddll
_loaddll:
	jmp *__imp__loaddll(%rip)
#elif __i386__
	.globl __loaddll
__loaddll:
	jmp *__imp___loaddll
#else
#error "Unknown target"
#endif

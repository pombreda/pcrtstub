/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_wcscpy_s.S"
	.text
#ifdef __x86_64__
	.globl wcscpy_s
wcscpy_s:
	jmp *__imp_wcscpy_s(%rip)
#elif __i386__
	.globl _wcscpy_s
_wcscpy_s:
	jmp *__imp__wcscpy_s
#else
#error "Unknown target"
#endif

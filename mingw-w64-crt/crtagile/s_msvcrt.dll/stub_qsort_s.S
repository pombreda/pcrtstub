/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_qsort_s.S"
	.text
#ifdef __x86_64__
	.globl qsort_s
qsort_s:
	jmp *__imp_qsort_s(%rip)
#elif __i386__
	.globl _qsort_s
_qsort_s:
	jmp *__imp__qsort_s
#else
#error "Unknown target"
#endif

//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_tmpnam_s.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.tmpnam_s,"w"
	.globl __imp_tmpnam_s
	.align 8
__imp_tmpnam_s:
	.quad 0
	.section .rdata, "dr"
__imp_tmpnam_s_name:
	.ascii "tmpnam_s"
	.section .rdata$imp.msvcrt.dll.tmpnam_s, "dr"
	.align 8
	.quad __imp_tmpnam_s_name, __imp_tmpnam_s
#elif __i386__
	.section .data$msvcrt.dll.iat.tmpnam_s, "w"
	.align 4
	.globl __imp__tmpnam_s
__imp__tmpnam_s:
	.long 0
	.section .rdata, "dr"
__imp__tmpnam_s_name:
	.ascii "tmpnam_s"
	.section .rdata$imp.msvcrt.dll.tmpnam_s, "dr"
	.align 4
	.long __imp_tmpnam_s__name, __imp__tmpnam_s
#else
#error "Unknown target"
#endif

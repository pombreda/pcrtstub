//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_strtok_s.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.strtok_s,"w"
	.globl __imp_strtok_s
	.align 8
__imp_strtok_s:
	.quad 0
	.section .rdata, "dr"
__imp_strtok_s_name:
	.ascii "strtok_s"
	.section .rdata$imp.msvcrt.dll.strtok_s, "dr"
	.align 8
	.quad __imp_strtok_s_name, __imp_strtok_s
#elif __i386__
	.section .data$msvcrt.dll.iat.strtok_s, "w"
	.align 4
	.globl __imp__strtok_s
__imp__strtok_s:
	.long 0
	.section .rdata, "dr"
__imp__strtok_s_name:
	.ascii "strtok_s"
	.section .rdata$imp.msvcrt.dll.strtok_s, "dr"
	.align 4
	.long __imp_strtok_s__name, __imp__strtok_s
#else
#error "Unknown target"
#endif

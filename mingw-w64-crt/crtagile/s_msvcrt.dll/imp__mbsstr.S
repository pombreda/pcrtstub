//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__mbsstr.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._mbsstr,"w"
	.globl __imp__mbsstr
	.align 8
__imp__mbsstr:
	.quad 0
	.section .rdata, "dr"
__imp__mbsstr_name:
	.ascii "_mbsstr"
	.section .rdata$imp.msvcrt.dll._mbsstr, "dr"
	.align 8
	.quad __imp__mbsstr_name, __imp__mbsstr
#elif __i386__
	.section .data$msvcrt.dll.iat._mbsstr, "w"
	.align 4
	.globl __imp___mbsstr
__imp___mbsstr:
	.long 0
	.section .rdata, "dr"
__imp___mbsstr_name:
	.ascii "_mbsstr"
	.section .rdata$imp.msvcrt.dll._mbsstr, "dr"
	.align 4
	.long __imp__mbsstr__name, __imp___mbsstr
#else
#error "Unknown target"
#endif

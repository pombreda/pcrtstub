//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_isleadbyte.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.isleadbyte,"w"
	.globl __imp_isleadbyte
	.align 8
__imp_isleadbyte:
	.quad 0
	.section .rdata, "dr"
__imp_isleadbyte_name:
	.ascii "isleadbyte"
	.section .rdata$imp.msvcrt.dll.isleadbyte, "dr"
	.align 8
	.quad __imp_isleadbyte_name, __imp_isleadbyte
#elif __i386__
	.section .data$msvcrt.dll.iat.isleadbyte, "w"
	.align 4
	.globl __imp__isleadbyte
__imp__isleadbyte:
	.long 0
	.section .rdata, "dr"
__imp__isleadbyte_name:
	.ascii "isleadbyte"
	.section .rdata$imp.msvcrt.dll.isleadbyte, "dr"
	.align 4
	.long __imp_isleadbyte__name, __imp__isleadbyte
#else
#error "Unknown target"
#endif

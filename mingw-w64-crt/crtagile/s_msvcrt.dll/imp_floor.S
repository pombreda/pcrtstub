//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_floor.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.floor,"w"
	.globl __imp_floor
	.align 8
__imp_floor:
	.quad 0
	.section .rdata, "dr"
__imp_floor_name:
	.ascii "floor"
	.section .rdata$imp.msvcrt.dll.floor, "dr"
	.align 8
	.quad __imp_floor_name, __imp_floor
#elif __i386__
	.section .data$msvcrt.dll.iat.floor, "w"
	.align 4
	.globl __imp__floor
__imp__floor:
	.long 0
	.section .rdata, "dr"
__imp__floor_name:
	.ascii "floor"
	.section .rdata$imp.msvcrt.dll.floor, "dr"
	.align 4
	.long __imp_floor__name, __imp__floor
#else
#error "Unknown target"
#endif

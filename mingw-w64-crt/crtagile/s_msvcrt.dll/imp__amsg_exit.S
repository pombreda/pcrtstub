//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__amsg_exit.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._amsg_exit,"w"
	.globl __imp__amsg_exit
	.align 8
__imp__amsg_exit:
	.quad 0
	.section .rdata, "dr"
__imp__amsg_exit_name:
	.ascii "_amsg_exit"
	.section .rdata$imp.msvcrt.dll._amsg_exit, "dr"
	.align 8
	.quad __imp__amsg_exit_name, __imp__amsg_exit
#elif __i386__
	.section .data$msvcrt.dll.iat._amsg_exit, "w"
	.align 4
	.globl __imp___amsg_exit
__imp___amsg_exit:
	.long 0
	.section .rdata, "dr"
__imp___amsg_exit_name:
	.ascii "_amsg_exit"
	.section .rdata$imp.msvcrt.dll._amsg_exit, "dr"
	.align 4
	.long __imp__amsg_exit__name, __imp___amsg_exit
#else
#error "Unknown target"
#endif

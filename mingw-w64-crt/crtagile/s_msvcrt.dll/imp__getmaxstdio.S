//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__getmaxstdio.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._getmaxstdio,"w"
	.globl __imp__getmaxstdio
	.align 8
__imp__getmaxstdio:
	.quad 0
	.section .rdata, "dr"
__imp__getmaxstdio_name:
	.ascii "_getmaxstdio"
	.section .rdata$imp.msvcrt.dll._getmaxstdio, "dr"
	.align 8
	.quad __imp__getmaxstdio_name, __imp__getmaxstdio
#elif __i386__
	.section .data$msvcrt.dll.iat._getmaxstdio, "w"
	.align 4
	.globl __imp___getmaxstdio
__imp___getmaxstdio:
	.long 0
	.section .rdata, "dr"
__imp___getmaxstdio_name:
	.ascii "_getmaxstdio"
	.section .rdata$imp.msvcrt.dll._getmaxstdio, "dr"
	.align 4
	.long __imp__getmaxstdio__name, __imp___getmaxstdio
#else
#error "Unknown target"
#endif

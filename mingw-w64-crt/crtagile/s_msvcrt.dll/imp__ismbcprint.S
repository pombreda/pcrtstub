//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__ismbcprint.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._ismbcprint,"w"
	.globl __imp__ismbcprint
	.align 8
__imp__ismbcprint:
	.quad 0
	.section .rdata, "dr"
__imp__ismbcprint_name:
	.ascii "_ismbcprint"
	.section .rdata$imp.msvcrt.dll._ismbcprint, "dr"
	.align 8
	.quad __imp__ismbcprint_name, __imp__ismbcprint
#elif __i386__
	.section .data$msvcrt.dll.iat._ismbcprint, "w"
	.align 4
	.globl __imp___ismbcprint
__imp___ismbcprint:
	.long 0
	.section .rdata, "dr"
__imp___ismbcprint_name:
	.ascii "_ismbcprint"
	.section .rdata$imp.msvcrt.dll._ismbcprint, "dr"
	.align 4
	.long __imp__ismbcprint__name, __imp___ismbcprint
#else
#error "Unknown target"
#endif

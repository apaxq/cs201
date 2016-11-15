//========================================================================
//Program:	asmFun
//Author:	Austin Parrish
//Date:		11/08/2016
//Dev Env:	GCC
//Description:	Get's the volume of a sphere in asm
//========================================================================
#include <stdio.h>

//================================================================
// Function:		sphereVolume
// Description:		get's the vol of a sphere
// Arguments:		radius of the sphere (double)
// Return Value:	the volume of the sphere (double)
//================================================================
double sphereVolume(double radius){
	double volume;
	const double PI = 3.14159265359;
	double fraction = 4.0/3;
	asm(	
		"fldpi \n"
		"fldl %[fraction] \n"
		"fmulp \n"
		"fldl %[radius] \n"
		"fmulp \n"
		"fldl %[radius] \n"
		"fmulp \n"
		"fldl %[radius] \n"
		"fmulp \n"
		"fstpl %[volume] \n"
		//
		:	[volume]	"=m"(volume)
		:	[radius]	"m"(radius),
			[fraction]	"m"(fraction)
	:);
	return volume;
}

//================================================================
// Function:            printCpuVendorID
// Description:		Prints out the CPU Vendor ID
// Arguments:		None
// Return value:	None
//================================================================
void printCpuVendorID() {
	char ebx[4];
	char edx[4];
	char ecx[4];	
	asm(
			"movl	$0,	%%eax\n"
			"CPUID\n"
			"movl   %%ebx,  %[ebx]\n"
			"movl	%%edx,	%[edx]\n"
			"movl	%%ecx,	%[ecx]\n"
			//
			:	[ebx]	"=m"(ebx),
				[edx]	"=m"(edx),
				[ecx]	"=m"(ecx)
			:
			:"%eax","%ebx","%edx","%ecx");
		printf("%s\n", ebx);
}

int main (){
	printf("Austin Parrish\n");
	printf("%f\n", sphereVolume(4.5));
	printCpuVendorID();		
	return 0;
} 

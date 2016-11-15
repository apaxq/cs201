/*************************************************************************
Program:	FloatFun
Author:		Austin Parrish
Date:		10/17/2016
Dev Env:	GCC
Description:	Evaluate floating point numbers
*************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/*************************************************************************
Function:	printAsBinary
Description:	prints the number in binary
Arguments:	Number you want to print in binary (int)
Return value:	N/A
*************************************************************************/
void printAsBinary(int numToPrint){
	 for(int i = 31; i >= 0; i--){
		int j = numToPrint >> i;
		if(j & 1){
			printf("1");
		}else{
			printf("0");
		}
		if(i%4==0){
			printf(" ");
		}
	}
	printf("\n");
}

/*************************************************************************
Function:	getSignBit
Description:	Gets the sign bit of the floating point number
Arguments:	Number you want to check (int)
Return value:	The sign bit (int)
*************************************************************************/
int getSignBit(int num){
	int j = num >> 31;
	if(j & 1){
		return 1;
	}else{
		return 0;
	}
}

/*************************************************************************
Function:	getExpbits
Description:	Gets the Exp bits of the floating point number
Arguments:	Number you want to check (int)
Return value:	The Exp bits (int)
*************************************************************************/
int getExpbits(int num){
	int result=0;
	for(int i = 30; i >= 24; i--){
		int j = num >> i;
		if(j & 1){
			result = result + pow(2,i-23);
		}
	}
	return result;		
}

/*************************************************************************
Function:	getFraction
Description:	Gets the fraction bits of the floating point number
Arguments:	Number you want to check (int)
Return value:	The fraction bits (int)
*************************************************************************/
int getFraction(int num){
	int result=0;
	for(int i = 23; i >= 0; i--){
		int j = num >> i;
		if(j & 1){
			result = result + pow(2,i);
		}
	}
	return result;
}

int main(int argc, char *argv[]){
	if (argc != 2){
		printf("Usage: %s float_value\n", argv[0]);
		return -1;
	}

	float y = (float) atof(argv[1]);

	printf("Austin Parrish\n\n");
	
	printf("float val:\t\t%f\n", y);
	printf("in hex:\t\t\t%#08x\t", *( (int*) &y ));
	printAsBinary(*( (int*) &y ));
	printf("\n");
	
	printf("sign: %d\t", getSignBit(*( (int*) &y )));
	printf("\t\t%#08x\t", getSignBit(*( (int*) &y )));
	printAsBinary(getSignBit(*( (int*) &y )));

	printf("expbits: %d\t\t", getExpbits(*( (int*) &y )));
	printf("%#08x\t", getExpbits(*( (int*) &y )));
	printAsBinary(getExpbits(*( (int*) &y )));
	
	printf("fraction: %d\t", getFraction(*( (int*) &y )));
	printf("%#08x\t", getFraction(*( (int*) &y )));
	printAsBinary(getFraction(*( (int*) &y )));
}

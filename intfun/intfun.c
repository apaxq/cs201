/*************************************************************************
Program:	intFun
Author:		Austin Parrish
Date:		10/10/16
Dev Env:	GCC (-std=c11)
Description:	Example of how printf works
*************************************************************************/
#include <stdio.h>

/*************************************************************************
Function:	isBigEndian
Description:	Check if cpu is Big Endian or Little Endian
Arguments:	None
Return value:	CPU Endian Stauts
		- 0 = Little Endian
		- 1 = Big Endian
*************************************************************************/
char isBigEndian(){
	unsigned int x=0x12345678;
	unsigned char* xp;

	xp = (unsigned char*) &x;
	if (*xp == 0x78){
		return 0;
	}else{
		return 1;
	}
}


/*************************************************************************
Function:       printAsBinary
Description:    Prints any number to Binary using Bitwise Operators(tm)
Arguments:      numToPrint (short) - The number we want to convert to 
		binary
Return value:   None
*************************************************************************/
void printAsBinary(short numToPrint){
	for(int i = 15; i >= 0; i--){
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
}

/*************************************************************************
Function:       printNum
Description:    Prints any number in Dec, Hex, and binary
Arguments:      numToPrint (short) - The number we want to convert to 
		print
Return value:   None
*************************************************************************/
void printNum(int num){
	printf("%d\t",num);
	if(num <0){
		printf("0x%03x\t",num);
	}else{
		printf("0x%03x\t\t",num);
	}
	printAsBinary(num);
}


int main(){
	/*Print name*/
	printf("Austin Parrish\n");
	
	/*Check endian*/
	if (isBigEndian() == 0){
		printf("Computer is Little endian \n");
	}else{
		printf("Computer is Big endian \n");
	}
	
	long long test = 1;	
	/*Print size of different datatypes*/
	printf("sizeof(short) = %d\n",(int) sizeof(short));
	printf("sizeof(int) = %d\n",(int) sizeof(int));
	printf("sizeof(long) = %d\n",(int) sizeof(long));
	printf("sizeof(long long) = %u\n", (int) sizeof(test));	
	
	/*Print numbers in Dec, Hex, and binary*/
	printf("Dec\tHex\t\tBinary\n");
	for (int i = -3; i <=10; i++){
		printNum(i);
		printf("\n");
	}
	
	/*Return 0 to let the system know the program exited successfully*/
	return 0;
}

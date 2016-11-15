//========================================================================
//Program:	decrypt
//Author:	Austin Parrish
//Date:		11/10/16
//Dev Env:	GCC
//Description:	Decrypts rich's "highly encrypted" data
//========================================================================
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main (int argc, char *argv[]){
	if (argc !=2){
		printf("Usage: %s path/to/file\n", argv[0]);
		return -1;
	}

	char outputFileName[255]= "\0";
	strcat(outputFileName, argv[1]);
	strcat(outputFileName, ".d");

	//add file to buffer
	char buff[255];
	FILE *fp;

	fp = fopen(argv[1], "r");
	if (fp == NULL){
		printf("File could not be read, please try again.\n");
        	return -1;
	}
	fscanf(fp, "%s", buff);
	
	fseek(fp, 0L, SEEK_END);
	int sz = ftell(fp);

	fclose(fp);
	int mask = 0xFF;
	
	printf("Input file:\t%s\n",argv[1]);
	printf("File Size:\t%i bytes\n", sz);
	printf("Output file:\t%s\n", outputFileName);
	
	//Decrypt and save
	fp = fopen(outputFileName, "wb");
	if (fp == NULL){
		printf("Cound not write to the output file, please try again.\n");
		return -1;
	}
	for (int i = 0; i <= sz-1; i++){
		
		if (i % 2 ){
			buff[i]=((buff[i] >> 4) & 0x0f) | ((buff[i] << 4) & 0xf0);
		}else{
			buff[i] ^= mask;
		}
		//printf("%c",buff[i]);
		fprintf(fp, "%c", buff[i]);
	}
	fclose(fp);
	printf("Decryption Successful! \tOutput file created.\n");
	return 0;
}

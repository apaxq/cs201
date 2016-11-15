#include "stdio.h"  
 int main() {  
 unsigned int x=0x12345678;  
 unsigned char* xp;	 
   
 xp = (unsigned char*) &x;	 
 printf("%u", *xp);  
   
 return 1;  
 } 

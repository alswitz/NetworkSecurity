/* Network Security I         */
/* Name:							        */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "des.h"

int main (void)
{
	long plaintext = 0x0123456789ABCDE;
	long mask, bitvalue;
	long Key = 0xAABBCCDDAABBCCDD;
	long Key_PC1 = 0;
	int PC1_index, i;

<<<<<<< HEAD
	for (i = 0; i < 3; i++)
=======
	for (i = 0; i < 58; i++)
>>>>>>> 53a3197602c10e174a8d1662d912733d9a6a87ed
	{
		mask = 1 << PC1[i];
		bitvalue = (Key & mask) >> PC1[i];
		PC1_index = 55 - i;
		Key_PC1 |= bitvalue << PC1_index;
	}

	long ciphertext = des_encrypt(plaintext);
	
	return 0;
}

long des_encrypt(long plaintext)
{
	long ciphertext;
	print_hex(plaintext);
	
	// insert encryption code here
	
	return ciphertext;
}

void print_hex(long data)
{
	int i;
	char *byte = (char*)&data;
	int i;

	// print each letter in hex
	for (i = 7; i > -1; i--)
		printf("%02x ", (unsigned char)byte[i]);
	
	// append with new line
	printf("\n");
}

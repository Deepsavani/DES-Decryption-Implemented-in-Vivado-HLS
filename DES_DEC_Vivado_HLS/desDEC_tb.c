#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <ap_cint.h>
#include <inttypes.h>
#include "desDecrypt.H"
#include "desEncrypt.H"

int main(){
	//Outputs of encryption and decryption modules
	uint64_t enc_out;
	uint64_t dec_out;

	//INPUTS to test the module -->
	uint64_t key = 0x147080221470802;
	uint64_t plain_text = 0x0123456789ABCDEF;
	printf("Key = 0x%"PRIx64"\n", key);
	printf("Plain text input = 0x%"PRIx64"\n", plain_text);

	//Outputs True if plain_text input to enc == plain_text output from dec
	int comp;

	enc_out = des_enc(plain_text, key);
	printf("Cipher text output from DES_enc = 0x%"PRIx64"\n", enc_out);
	dec_out = des_dec(enc_out, key);

	if(dec_out == plain_text){
		comp = 1;
		printf("comp = %d",comp);
		printf("	(Decrypt successful)\n");
	}
	else{
		comp = 0;
		printf("comp = %d\n", comp);
	}
	printf("Plain Text output = 0x%"PRIx64"\n",dec_out);
}

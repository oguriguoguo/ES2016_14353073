#include "my_hfile.h"

int a,b;
const int c = 33;

uchar encrypt_char( uchar c ){
	a = 7;
	b = 0;
	if (((c >= 'a') && (c <= 'm')) || ((c >= 'A') && (c <= 'M'))) {
		return c+13;
	}
	else if (((c > 'm') && (c <= 'z')) || ((c > 'M') && (c <= 'Z'))) {
		return c-13;
	} 
	else {
		return c;
	}
}
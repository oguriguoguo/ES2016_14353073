#include "my_hfile.h"
#include <string.h>
#include <strings.h>

int __gccmain(){
        int i;
	int d;
	d = 233;
	uchar iC[my_L] = {'I',' ','l','o','v','e',' ','S','Y','S','U'};
	uchar oC[my_L] = {0};
	for(i=1;i<my_L;i++){
		oC[i] = encrypt_char(iC[i]);
	}
	return 0;
}

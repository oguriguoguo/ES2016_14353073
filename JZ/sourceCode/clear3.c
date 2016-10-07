clear3(int *array,int size){
	int *p;
	int *tmp = &array[size];
	for(p = &array[0];p<tmp;p++)
		*p = 0;
}
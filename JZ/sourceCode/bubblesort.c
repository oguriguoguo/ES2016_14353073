void bubblesort(int* array, int n)
{
	int i,j,temp;
	for(j=0; j<n-1; j++)
		for(i=0; i<n-1-j; i++)
		{
			if(array[i] > array[i+1])	//if it's larger
			{
				temp = array[i];	//swap the data
				array[i] = array[i+1];
				array[i+1] = temp;
			}
		}
}

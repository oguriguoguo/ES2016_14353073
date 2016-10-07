int max( int* pt, int size )
{
	
    int max_v = -32768;
	
    int* tmp = &pt[size];
	
    int* pi = pt;
	
    while(pi<=tmp){
		
       if( *pi>max_v )
       {
			
             max_v = *pi;
		
       }
		
       pi++;
	
    }
	
    return max_v;
    
}

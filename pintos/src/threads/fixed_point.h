#ifndef FIXED_POINT_H
#define FIXED_POINT_H
#include <stdint.h>

int convert_to_fixed_point(int n);
int convert_to_integer_zero(int x);
int convert_to_integer_nearest(int x);
int add_fixed_point_and_fixed_point(int x,int y);
int add_fixed_point_and_integer(int x,int n);
int subtract_fixed_point_from_fixed_point(int x,int y);
int subtract_integer_from_fixed_point(int x,int n);
int multiply_fixed_point_by_fixed_point(int x,int y);
int multiply_fixed_point_by_integer(int x,int n);
int divide_fixed_point_by_fixed_point(int x,int);
int divide_fixed_point_by_integer(int x,int n);
#include "threads/fixed_point.h"
#include <stdint.h>
#define f (1<<14)
int convert_to_fixed_point(int n){
	return n*f;
}
int convert_to_integer_zero(int x){
	return x/f;
}
int convert_to_integer_nearest(int x){
	if(x >= 0)
		return (x + f/2)/f;
	else
		return (x - f/2)/f;
}
int add_fixed_point_and_fixed_point(int x,int y){
	return x + y;
}
int add_fixed_point_and_integer(int x,int n){
	return x + n*f;
}
int subtract_fixed_point_from_fixed_point(int x,int y){
	return x - y;
}
int subtract_integer_from_fixed_point(int x,int n){
	return x - n*f;
}
int multiply_fixed_point_by_fixed_point(int x,int y){
	return ((int64_t)x)*y/f;
}
int multiply_fixed_point_by_integer(int x,int n){
	return x*n;
}
int divide_fixed_point_by_fixed_point(int x,int y){
	return ((int64_t)x)*f/y;
}
int divide_fixed_point_by_integer(int x,int n){
	return x/n;
}

#endif

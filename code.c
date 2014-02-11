#include <stdio.h>
#include <time.h>
#include <stdlib.h>

// Initialize functions
double *generateVectorV(int n);
// Initialize help-functions
void printVector(double *vector, int n);


int main (){
	// Initialize variables
	int n;
	double *v;
	
	printf("Enter vector length: ");
	scanf("%d", &n);

	v = generateVectorV(n);
	printVector(v,n);
}



// Functions

double *generateVectorV(int n){
	double *v = malloc(n*sizeof(int));
	int i;
	for (i=0; i<n; i++){
		v[i] = 1/i^2;
	}
	return v;
}


// Help-functions

void printVector(double *vector, int n){
	int i;
	for (i=0; i<n; i++){
		printf("%f \n", vector[i]);
	}
}
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <math.h>

// Initialize functions
double *generateVectorV(int n);
double computeSum(double *vector, int n);
double computeDifference(double sum, int n);
// Initialize help-functions
void printVector(double *vector, int n);


int main (){
	// Initialize variables
	int n;
	double *v;
	double sum;
	double difference;
	int k;
	int kMax = 14;
	int kTemp;
	
//	printf("Enter vector length: ");
//	scanf("%d", &n);

	for (k=3; k<kMax; k++){
		n = pow(2,k); 			//gcc code.c -lm -o code
		v = generateVectorV(n);
		sum = computeSum(v,n);
		printf("Sum: %f \n",sum);
		difference = computeDifference(sum,n);
		printf("%f \n",difference);
	}
	//printVector(v,n);
}


// Functions

double *generateVectorV(int n){
	double *v = malloc(n*sizeof(int));
	int i;
	for (i=1; i<=n; i++){
		v[i-1] = 1/pow(i,2);
	}
	return v;
}

double computeSum(double *vector, int n){
	double sum = 0;
	int i;
	for (i=0; i<n; i++){
		sum += vector[i];
	}
}

double computeDifference(double sum, int n){
	double difference = pow(M_PI,2)/6 - sum;
	return difference;
}


// Help-functions

void printVector(double *vector, int n){
	int i;
	for (i=0; i<n; i++){
		printf("%f \n", vector[i]);
	}
}

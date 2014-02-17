#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <math.h>
#include <omp.h>

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
	
	double start = omp_get_wtime();
	
	for (k=3; k<kMax; k++){
		n = pow(2,k); 			//gcc code.c -lm -o code
		v = generateVectorV(n);
		sum = computeSum(v,n);
		difference = computeDifference(sum,n);
		printf("\nOn thread %d\tSum with k=%d : %f .\tDifference = %f\n", omp_get_thread_num(), k, sum, difference);
		free(v);
	}

	printf("Time elapsed: %f seconds using %d threads\n",omp_get_wtime()-start, omp_get_max_threads());
	
}


// Functions

double *generateVectorV(int n){
	double *v = malloc(n*sizeof(double));
	int i;
	
	#pragma omp parallel for schedule(static)
	for (i=1; i<=n; i++){
		v[i-1] = 1.0/(i*i);
	}
	return v;
}

double computeSum(double *vector, int n){
	
	double sum = 0;
	int i;
	
	#pragma omp parallel for schedule(static) reduction(+:sum)
	for (i=0; i<n; i++){
		sum += vector[i];
	}
	return sum;
}

double computeDifference(double sum, int n){
	double difference = M_PI*M_PI/6 - sum;
	return difference;
}


// Help-functions

void printVector(double *vector, int n){
	int i;
	for (i=0; i<n; i++){
		printf("%f \n", vector[i]);
	}
}

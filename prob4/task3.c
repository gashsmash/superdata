#include <stdio.h>
#include <string.h>
#include <time.h>
#include <stdlib.h>
#include <math.h>

#include <omp.h>
#include "mpi/mpi.h"
#include "openmpi/mpi.h"


// Initialize functions
double *generateVectorV(int n);
double computeSum(double *vector, int n);
double computeDifference(double sum, int n);
// Initialize help-functions
void printVector(double *vector, int n);


int main (int argc, char **argv){
	// Initialize variables
	int n, k, kMax = 5;
	double *v, sum, difference;
	// Variables used for MPI
	int rank, size, tag, i;
	MPI_Status status;
	
	MPI_Init(&argc, &argv);
	MPI_Comm_size(MPI_COMM_WORLD, &size);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	
	

	for (k=3; k<kMax; k++){
		n = pow(2,k); 			//gcc code.c -lm -o code
		v = generateVectorV(n);
		sum = computeSum(v,n);
		
		difference = computeDifference(sum,n);
		printf("%f \n",difference);
	}
	MPI_Finalize();

}


// Functions

double *generateVectorV(int n){
	double *v = malloc(n*sizeof(double));
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
	return sum;
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

// Compilering:	mpicc task3.c -o task3
// Kjøring: 	mpiexec -n 80 ./task3


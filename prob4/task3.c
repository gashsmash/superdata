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
double computeSum(double *vector, int n, int rank, int size);
double computeDifference(double sum, int n);
// Initialize help-functions
void printVector(double *vector, int n);


int main (int argc, char **argv){
	// Initialize variables
	int n, k, kMax = 4;
	double *v, sum, difference;
	// Variables used for MPI
	int rank, size, tag, i;
	MPI_Status status;
	
	MPI_Init(&argc, &argv);
	MPI_Comm_size(MPI_COMM_WORLD, &size);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	
	
	k=3;
//	for (k=3; k<kMax; k++){
		if (rank == 0) {
			n = pow(2,k); 			//gcc code.c -lm -o code
			v = generateVectorV(n);
		}
		MPI_Bcast(&n, 1, MPI_INT, 0, MPI_COMM_WORLD);
		double partial_sum = 0;
		printf("0: %f \n1: %f \n2: %f \n3: %f\n4: %f\n5: %f",v[0],v[1],v[2],v[3],v[4],v[5]);
		for (i=rank; i<n; i += size){
			printf(" Proc %i have the value %f , and i is %i\n", rank, v[i],i);
			partial_sum = partial_sum + v[i];
		}
//		printf("proc %i computed: %f \n", rank, (float)partial_sum);
		MPI_Reduce(&partial_sum, &sum, 1, MPI_DOUBLE, MPI_SUM, 0, MPI_COMM_WORLD);
//		MPI_Bcast(&n, 1, MPI_INT, 0, MPI_COMM_WORLD);
//			sum = computeSum(v, n, rank, size);
//		MPI_Reduce(sbuf,rbuf, 1, MPI_DOUBLE, MPI_SUM, 0, MPI_COMM_WORLD);
		if (rank == 0) {
		difference = computeDifference(sum,n);
		printf("\n\naiaiai %f \n",difference);
		}
//	}
	MPI_Finalize();

}


// Functions

double *generateVectorV(int n){
	double *v = malloc(n*sizeof(double));
	int i;
	for (i=1; i<=n; i++){
		v[i-1] = pow(i,-2);
		printf("v element %i is %f \n",i-1, v[i-1]);
	}
	return v;
}

double computeSum(double *vector, int n, int rank, int size){
	double sum = 0;
	int i;
	MPI_Bcast(&n, 1, MPI_INT, 0, MPI_COMM_WORLD);
	double partial_sum = 0;
	for (i=rank; i<n; i += size){
		partial_sum += vector[i];
	}
	printf("proc %i computed: %f +n", rank, partial_sum);
	MPI_Reduce(&partial_sum, &sum, 1, MPI_DOUBLE, MPI_SUM, 0, MPI_COMM_WORLD);
	if (rank == 0) {
		return sum;
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

// Compilering:	mpicc task3.c -o task3
// Kjøring: 	mpiexec -n 80 ./task3


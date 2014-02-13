#include <iostream>
#include <cstdlib>
#include <fstream>
#include <cmath>
#include <ctime>
#include <mpi.h>

using namespace std;



int main(int argc, char **argv){

      int rank, size, tag, i;
      MPI_Status status;
      char message[20];
      
      MPI_Init (&argc, &argv);
      MPI_Comm_size (MPI_COMM_WORLD, &size);
      MPI_Comm_rank (MPI_COMM_WORLD, &rank);
      
      tag=100;
      
      if(rank==0){
           
           strcpy(message, "Hello world!");
           
           for(i=1; i<size ; i++){
           
               MPI_Send (message, 13, MPI_CHAR, i, tag, MPI_COMM_WORLD);
               
           }
       }
           else{
           
              MPI_Recv (message, 13, MPI_CHAR, 0, tag, MPI_COMM_WORLD, &status);
           
           }
           
       printf( "node %d :  %13s\n", rank, message);
       
       MPI_Finalize();
       
       
           
return 0;
}

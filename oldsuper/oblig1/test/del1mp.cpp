#define _USE_MATH_DEFINES
#include <iostream>
#include <cmath>
#include <stdio.h>
#include <cstdlib>
#include "mpi.h"

using namespace std;


int main(int argc, char **argv){

   int n=16384,t=1,index[14],b=4, rank, size, tag;
   double v[n],pi=3.141592653589793,Sn=0,S=((pi*pi)/6);
   PI_Status status;
   
   
      MPI_Init (&argc, &argv);
      MPI_Comm_size (MPI_COMM_WORLD, &size);
      MPI_Comm_rank (MPI_COMM_WORLD, &rank);
      
      
   for (int i=0; i<=n; i++){
       
       
   
       v[i]=(double) 1/(t*t);

       t++;
   }
   #pragma omp parallel for schedule(dynamic)
   for(int i=3; i<=14; i++){
   
      b=b*2;
      Sn=0;
      
           for(int i=0; i<b; i++){
               
                   
                   Sn=Sn+v[i];  
           }
           
           
     double diff = fabs(Sn-S);
     printf("The difference for the sum with n=%i : %1.15f\n", b, diff);  
   }
   

 MPI_Finalize();  
      


return 0;
}


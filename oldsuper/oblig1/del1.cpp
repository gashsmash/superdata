#define _USE_MATH_DEFINES
#include <iostream>
#include <cmath>
#include <stdio.h>


using namespace std;


int main(){

   int n=16384,t=1,index[14],b=4;
   double v[n],pi=3.141592653589793,Sn=0,S=((pi*pi)/6);
   
   for (int i=0; i<=n; i++){
       
       
   
       v[i]=(double) 1/(t*t);

       t++;
   }
   //#pragma omp parallel for schedule(static)
   for(int i=3; i<=14; i++){
   
      b=b*2;
      Sn=0;
      
           for(int i=0; i<b; i++){
               
                   
                   Sn=Sn+v[i];  
           }
           
           
     double diff = fabs(Sn-S);
     printf("The difference for the sum with n=%i : %1.15f\n", b, diff);  
   }
   

   
      


return 0;
}


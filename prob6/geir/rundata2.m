clear all 
close all
format long
numthread2 = [0.014785 0.061781 0.247997 1.097214 4.828022 21.397821 92.115859 394.220864];
numthread4 = [0.008854 0.029847 0.126088 0.564425 2.455873 10.917301 46.654913 199.896180];
numthread6 = [0.007814 0.019739 0.087587 0.382301 1.673222  7.358146 31.651354  136.020848];
numthread8 = [0.006243 0.014997 0.066232 0.289677 1.283430  5.604751 24.145120 104.458651];
numthread10 = [0.006968 0.012700 0.054492 0.238712 1.038716 4.555078 19.520476 85.575038];
numthread12 = [0.029035 0.010975 0.046059 0.201458 0.885606 3.859505 16.516442 72.559879]; 

n = [128 256 512 1024 2048 4096 8192 16384];

figure()
plot(n,numthread2,n,numthread4,n,numthread6,n,numthread8,n,numthread10,n,numthread12)
xlabel('Grid size (n)')
ylabel('Seconds (s)')
legend('THREADS = 2', 'THREADS = 4', 'THREADS = 6', 'THREADS = 8', 'THREADS = 10', 'THREADS = 12', 'Location', 'NorthWest')

speedup24 = numthread2./numthread4;
speedup26 = numthread2./numthread6;
speedup28 = numthread2./numthread8;
speedup210 = numthread2./numthread10;
speedup212 = numthread2./numthread12;	

nlog2 = log2(n);

figure()
plot(nlog2,speedup24,nlog2,speedup26,nlog2,speedup28,nlog2,speedup210,nlog2,speedup212)
xlabel('Grid size (2^k)')
ylabel('Speedup (n)')
legend('S from 2 to 4', 'S from 2 to 6', 'S from 2 to 8', 'S from 2 to 10', 'S from 2 to 12', 'Location', 'SouthEast')

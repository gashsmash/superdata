clear all 
close all
format long
numthread2 = [0.038501 0.165360 0.360972 1.108549 4.840595 21.759813 93.076838 398.173927];
numthread4 = [.022318 .086002 .253303 .567383 2.476421 11.062064 47.382968 205.254259];
numthread6 = [0.017235 0.05864 0.254934 0.429435 1.698763 7.866677 33.117204 139.296412];

n = [128 256 512 1024 2048 4096 8192 16384];

figure()
plot(n,numthread2,n,numthread4,n,numthread6)
xlabel('Grid size (n)')
ylabel('Seconds (s)')
legend('THREADS = 2', 'THREADS = 4', 'THREADS = 6', 'Location', 'NorthWest')

speedup24 = numthread2./numthread4;
speedup26 = numthread2./numthread6;

figure()
plot(n,speedup24,'-^',n,speedup26,'-*')
xlabel('Grid size (n)')
ylabel('Speedup (n)')
legend('S from 2 to 4', 'S from 2 to 6', 'Location', 'NorthWest')

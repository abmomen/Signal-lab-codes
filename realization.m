clc;
close all;
clear all;
syms z
m=input('Enter data limit of first signal: ');
for i=1:1:m
    num(i)=input('Data: ');
end
 
m=input('Enter data limit of 2nd signal: ');
for i=1:1:m
    den(i)=input('Data: ');
end
 
disp('Zeros of the given ZT are: ');
zeros=roots(num)
disp('Poles of the given ZT are: ');
poles=roots(den)
Ts=0.2;
H=tf('z');
disp('The taken ZT is: ')
H=tf(num,den,Ts)
     pzmap(H);
clear all;
close all;
clc;
n=input('Enter 1st array size : ');
for i=1:1:n
    x(i)=input('Value : ');
end
n11=input('Enter Zreo index no : ');
p1=1-n11;
n1=p1;
for i=1:1:n
    x1(i)=p1;
    p1=p1+1;
end
m=input('Enter 2nd array size : ');
for i=1:1:m
    y(i)=input('Value : ');
end
n21=input('Enter Zreo index no : ');
p2=1-n21;
n2=p2;
for i=1:1:m
    y1(i)=p2;
    p2=p2+1;
end
N=n1+n2
seq=(n+m)-1
for i=1:1:seq
    sq(i)=N;
    N=N+1;
end
 
 sq
 for i=1:1:seq
     for j=1:1:seq
     res(i,j)=0;
     
     end
 end
 k=1;
 l=1;
 count=0;
 for j=m:-1:1
     for i=n:-1:1
         res(k,l)=x(i)*y(j)
         l=l+1;
     end
     k=k+1;
     count=count+1;
     l=1+count;
 end
 r=0;
 i1=1;
     for j=1:1:seq
         for i=1:1:seq
             r=r+res(i,j);
         end
         
             ans(i1)=r;
             i1=i1+1;
             r=0;
     end
     j=1;
     for i=i1-1:-1:2
         a(j)=ans(i);
         j=j+1;
     end
     a(j)=ans(i)
stem(sq,a);
xlabel('Time');
ylabel('Amplitude');
title('Convolution Of Two signal');

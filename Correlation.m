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
 k=1;
 l=1;
 for j=m:-1:1
     for i=1:1:n
         res(k,l)=x(i)*y(j);
         l=l+1;
     end
     k=k+1;
     l=1;
 end
 r=0;
 k=1;
 
 for i=1:1:n
     d=i;
     for j=1:1:i
         r=r+res(d,j);
         d=d-1;
         
     end
     ans(k)=r;
         k=k+1;
         r=0;
 end
 l=1;
 r=0;
 for i=n:-1:2
     d=i;
     for j=m:-1:i
         r=r+res(d,j);
         d=d+1;
         
     end
     ans1(l)=r;
         l=l+1;
         r=0;
 end
 for i=k:1:seq
     if i==seq
         ans(i)=ans1(l-1)
     else
     ans(i)=ans1(l-1);
     end
     l=l-1;
 end
 subplot(3,1,1);
 stem(x1,x);
 title('First input signal');
 
 subplot(3,1,2);
 stem(y1,y);
 title('Second input signal');
 subplot(3,1,3);
stem(sq,ans);
xlabel('Time');
ylabel('Amplitude');
title('Correlation Of Two Signals');
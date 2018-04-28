clear all;
close all;
clc;
m=input('How many inputs : ');
for i=1:1:m
    y(i)=input('');
    yy(i)=y(i);
end
 n=input('Enter Zero index : ');
 p=1-n;
 Fdif=p
for i=1:1:m
    x(i)=p;
    xx(i)=x(i);
    p=p+1;
end
Ldif=p-1
m1=input('How many inputs : ');
for i=1:1:m1
    y1(i)=input('');
    yy1(i)=y1(i);
end
 n1=input('Enter Zero index : ');
 p1=1-n1; 
 Fdif1=p1
for i=1:1:m1
    x1(i)=p1;
    xx1(i)=x1(i);
    p1=p1+1;
end
 Ldif1=p1-1
if Fdif<Fdif1
    min=Fdif;
else
    min=Fdif1;
end
check=m;
check1=m1;
if Fdif>min
    difference=Fdif-min;
    if difference<0
        difference=difference*(-1);
    end
     check=m+difference;
    for i=m:-1:difference-1
        y(i+difference)=y(i);
    end
    for i=difference:-1:1
        y(i)=0;
    end 
   else
    difference=Fdif1-min;
    if difference<0
        difference=difference*(-1);
    end
    check1=m1+difference;
    for i=m1:-1:difference-1
        y1(i+difference)=y1(i);
    end
    for i=difference:-1:1
        y1(i)=0;
    end
end
if check<check1
    for i=check+1:1:check1
        y(i)=0;
    end
else
    for i=check1+1:1:check
        y1(i)=0;
    end
end
ch=max(check,check1);
for i=1:1:ch
    c(i)=min;
    min=min+1;
end
for i=1:1:ch
    sum(i)=y(i)+y1(i);
    sub(i)=y(i)-y1(i);
    mul(i)=y(i)*y1(i);
    div(i)=y(i)/y1(i);
end
subplot(4,2,1);
stem(xx,yy);
xlabel('Times');
ylabel('Amplitude');
title('Input First Signal');
subplot(4,2,2);
stem(xx1,yy1);
xlabel('Times');
ylabel('Amplitude');
title('Input Second Signal');
subplot(4,2,3);
stem(c,y);
xlabel('Times');
ylabel('Amplitude');
title('Modified First Signal');
subplot(4,2,4);
stem(c,y1);
xlabel('Times');
ylabel('Amplitude');
title('Modified Second Signal');
subplot(4,2,5);
stem(c,sum);
xlabel('Times');
ylabel('Amplitude');
title('Summation Of These signal');
subplot(4,2,6);
stem(c,sub);
xlabel('Times');
ylabel('Amplitude');
title('Subtarction Of These signal');
subplot(4,2,7);
stem(c,mul);
xlabel('Times');
ylabel('Amplitude');
title('Multiplication Of These signal');
subplot(4,2,8);
stem(c,div);
xlabel('Times');
ylabel('Amplitude');
title('Division Of These signal');
 y
y1   
sum
sub
mul
div
end

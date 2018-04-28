%Program to find the linear convolution of two sequences

x1=input('Enter the first sequence x1(n) = ');
t1=input('Enter the starting time of first sequence t1 = ');
x2=input('Enter the second sequence x2(n) = ');
t2=input('Enter the starting time of second sequence t2 = ');
l1=length(x1);
l2=length(x2);
ln=l1+l2-1;

yn=conv(x1,x2);

a=t1+l1-1;
t=t1:a;
subplot(311);
stem(t,x1);
grid on;
xlabel('time--->');
ylabel('amplitude--->');
TITLE('First sequence');

a=t2+l2-1;
t=t2:a;
subplot(312);
stem(t,x2);
grid on;
xlabel('time--->');
ylabel('amplitude--->');
TITLE('Second sequence');

tn=t1+t2;
a=tn+ln-1;
t=tn:a;
subplot(313);
stem(t,yn);
grid on;
xlabel('time--->');
ylabel('amplitude--->');
TITLE('Convolved output');

%output

%Enter the first sequence x1(n) = [1 2 6 2 3 1 4]
%Enter the starting time of first sequence t1 = -3
%Enter the second sequence x2(n) = [3 1 4 5 2]
%Enter the starting time of second sequence t2 = -1

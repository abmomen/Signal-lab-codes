clear all;
close all;
clc;
x1=[1 2 3 4];
subplot(4,1,1);
stem(x1);
xlabel('no. of samples');
ylabel('amplitude');
title('first signal');
x2=[4 3 2 1];
subplot(4,1,2);
stem(x2);
xlabel('no. of samples');
ylabel('amplitude');
title('second signal');
x3=x1+x2;
subplot(4,1,3);
stem(x3);
xlabel('no. of samples');
ylabel('amplitude');
title('added signal');
x4=x1*x2;
subplot(4,1,4);
stem(x4);
xlabel('no. of samples');
ylabel('amplitude');
title('multiplied signal');
display(x1);
display(x2);
display(x3);
display(x4);
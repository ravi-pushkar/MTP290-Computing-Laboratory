%Problem 5
%Run this file to get the answer of Problem 5.
%Implementing of all the parts using composite trapezoidal method has been
%done here

f = @(x) x.^3+5*x.^2+1; %f is the given function
CIV=integral(f,1,5); %Correct value of the integral in the interval [1,5] using default MATLAB function

fprintf("(a)With four sub intervals\n");
%With 4 sub intervals

a=1; %lower bound of the integral on the interval[1,5]
b=5; %Upper bound of the integral on the interval[1,5]
n1=4;
h1=(b-a)/n1; %step-size calculation
x=a;
I1 = 0.5*f(a)+0.5*f(b); %Setting the initial value of the integral
    for i=1 : n1-1
        x=x+h1;
        I1=I1 + f(x); %Updating the integral
    end
I1=h1*I1;
fprintf("The value of the integral = %0.6f\n",I1);
fprintf("\n");


fprintf("(a)With eight sub intervals\n");
%With 8 sub intervals

a=1; %lower bound of the integral on the interval[1,5]
b=5; %Upper bound of the integral on the interval[1,5]
n2=8;
h2=(b-a)/n2; %step-size calculation
x=a;
I2 = 0.5*f(a)+0.5*f(b); %Setting the initial value of the integral
    for i=1 : n2-1
        x=x+h2;
        I2=I2 + f(x); %Updating the integral
    end
I2=h2*I2;
fprintf("The value of the integral = %0.6f\n",I2);
fprintf("The correct answer of the integral = %0.6f\n", CIV);
fprintf("Approximation using eight sub intervals is much closer to the correct answer\n")
fprintf("\n");

fprintf("(c) The true error in both the cases\n")
error1=abs(CIV-I1);
error2=abs(CIV-I2);
fprintf("True error with four interval=%0.6f\n",error1);
fprintf("True error with eight interval=%0.6f\n",error2);
fprintf("True error for aprroximation using 8 sub intervals is much lesser than that of 4 sub intervals\n")

%The value of the integral using 4 sub intervals is 376.000000
%The value of the integral using 8 sub interval is 369.000000
%The correct value of the integral is 366.666667
%Clearly, the approximation with 8 sub intervals is much closer to the correct answer.
%The true error with 4 sub intervals is 9.3333
%The true error with 8 sub intervals is 2.3333

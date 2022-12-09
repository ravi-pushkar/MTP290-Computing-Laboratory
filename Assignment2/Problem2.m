%Problem 2
%Run this file to get the answer of Problem 2.
%Consider last row as the final answer in each case.
%Implementing of Runge-kutta method has been done here
function [] = Problem2()
    %Taking all the values as given in the question(Problem 2)
    f = @(x,y) sin(2*x) - y.*tan(x);
    x0=0;
    y0=1;
    h1=0.2;
    n1=(1-0)/h1; %Setting n1=(final value of x-Initial value of x)/step-size
    h2=0.1;
    n2=(1-0)/h2; %Setting n1=(final value of x-Initial value of x)/step-size
    RKMh1 = RKM(f,x0,y0,h1,n1); %Evaluate using Runge-Kutta Method and h=0.2
    RKMh2 = RKM(f,x0,y0,h2,n2); %Evaluate using Runge-Kutta Method and h=0.1
    fprintf(" x       y(Using h=0.2)\n");
    for i=1:n1+1 %Getting the output using Runge-kutta Method corresponding to each x for h=0.2
        fprintf("%0.6f    %0.6f\n", RKMh1(i,1), RKMh1(i,2));
    end
        fprintf(" x       y(Using h=0.1)\n");
    for i=1:n2+1 %Getting the output using Runge-kutta Method corresponding to each x for h=0.1
        fprintf("%0.6f    %0.6f\n", RKMh2(i,1), RKMh2(i,2));
    end
end

% Answer using h=0.2 is 1.036952
% and it is 1.037048 using h=0.1
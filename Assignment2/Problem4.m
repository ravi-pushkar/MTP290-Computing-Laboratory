%Problem 4
%Run this file to get the answer of Problem 4.
%Implementing of both the parts(Trapezoidal rule and Simpson rule) has
%been done here
function [] = Problem4()
    %Taking all the values as given in the question(Problem 4)
    f = @(x) sqrt(1+x.^2);
    fd = @(x) 1./(sqrt(1+x.^2).^3);
    fdd = @(x) 3.*(4.*(x.^2)-1)./(sqrt(1+x.^2).^7);
    a=1;
    b=5;
    n=10;
    h=(b-a)/n;
    x=linspace(a,b,n+1);
    y=TR(f,a,b,n);
    error_tr = -((h^2)*(b-a)).*(fd(x)./12);
    fprintf("Value of Integral using Trapezoidal rule= %0.6f\n",y);
    plot(x,abs(error_tr),'-o'); %Plotting absolute error 
    hold on
    y=SM(f,a,b,n);
    error_sr = -((h^4)*(b-a)).*(fdd(x)./180);
    fprintf("Value of Integral using simpson rule= %0.6f\n",y);
    plot(x,abs(error_sr),'-o'); %Plotting absolute error
    hold off
end

% The answer using trapezoidal rule is 12.759602
% while it is 12.756047 using simpson rule.
% The error using Simpson rule is much less than that using trapezoidal rule
% as it is visible from the graph

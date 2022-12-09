%Problem 1 
%Run this file to get the answer of Problem 1.
%Consider last row as the final answer in each case.
%Implementing of both the parts(Euler Method and Advanced Euler Method) has
%been done here
function [] = Problem1()
    %Taking all the values as given in the question(Problem 1)
    f = @(y) y - y.^2;
    x0=0;
    y0=0.2;
    h=0.1;
    n=10;
    EMans = EM(f,x0,y0,h,n); %Evaluate using Euler Method 
    IEMans = IEM(f,x0,y0,h,n); %Evaluate using Improved Euler Method
    fprintf(" x       y(Using Euler)      y(Using Improved Euler) \n");
    for i=1:n+1 %Getting the output using both the methods corresponding to each x
        fprintf("%0.6f    %0.6f    %0.6f\n", EMans(i,1), EMans(i,2), IEMans(i,2));
    end
end
% Answer using Euler method is 0.399697 and it is 0.404462 using improved
% Euler Method
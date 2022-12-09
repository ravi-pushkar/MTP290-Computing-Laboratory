%Problem sp2

%Function whose root is to be found is f(x) = sin(x) - cos(x) 
%Interval in which root is to be found is [0,1].

fprintf("Finding the root Using Newton Method\n")
fprintf("Function is f(x)=sin(x)-cos(x) and the interval is [0,1]\n")
%Using Newton Method
x=0; %Intial guess of the root
tol=10^-5; %tol is the value upto which the root is to be accurate(10^-5 here)
n_itr=0; %No. of iterations(Initially set to be 0)
while(n_itr<200)
    y=f(x);
    if(abs(y)<tol) %If abs(f(x)<tol; the root is obtained within the desired error  
        break; %And thus we break out of the loop 
    end
    n_itr=n_itr+1;
    dy=df(x); %Derivative of f(x) with respect to x
    x=x-(y/dy);   %Using the formula of Newton Method(x_n+1 = x_n - f(x_n)/f'(x_n)) 
end
ti_nm=n_itr; %Total no of iterations
xr_nm=x; %Root using Newton Method
fprintf("Root: %0.6f, No. of iterations: %0.6f\n",xr_nm, ti_nm);

fprintf("\n")
fprintf("Finding the root Using Secant Method\n")
fprintf("Function is f(x)=sin(x)-cos(x) and the interval is [0,1]\n")
%Using Secant Method
x0=0; x1=1; %Intial guess(Interval is [0,1])
tol=10^-5; %tol is the value upto which the root is to be accurate(10^-5 here)
n_itr=0; %No. of iterations(Initially set to be 0)

while(n_itr<200)
    n_itr=n_itr+1;
    if(abs(x0-x1)<tol) %if abs(x_n+1 - x_n)<tol; the root is obtained within the desired error
        break; %And thus we break out of the loop
    end
    
    temp=x1;
    x1=x1 - (f(x1)*(x1-x0)/(f(x1)-f(x0)));  %Using the formula of Secant Method x_n+2= x_n+1- f(x_n+1)* [ ( f(x_n+1) - f(x_n) )/(x_n+1 - x_n) ]
    x0=temp;                                 
    
end
ti_sm=n_itr; %Total no of iterations
xr_sm = x1; %Root using Newton Method
fprintf("Root: %0.6f, No. of iterations: %0.6f\n",xr_sm, ti_sm);

function y=f(x)
    y = sin(x)-cos(x); %the function
end
function y=df(x)
    y = cos(x)+sin(x); %the derivative of the function
end

%Comparisons between the two methods:

% 1. Root obtained through both the methods are almost same(here it is
% 0.785398 for both the methods)
% 2. Newton method uses slope of the tangent to the curve of the function at a point whereas Secant Method
% uses slope of the secant between two points on the curve of the function.
% 3. Both newton method and secant method are based on similar ideas. (they
% both work on the slope) and the formula is also quite similar(but not same).
% 4. Newton method converges faster than Secant method. Order of convergence = 2 for newton method whereas it is approximately 1.6 for
% secant method. (Here number of iterations using Newton method is 3
% while it is 5 for secant method to compute the same answer)
% 5. However newton method requires computation of derivative of the
% function which sometimes maynot be available or sometimes it may approach to 0. So,another numerical
% aprroximation alogrithm need to be used or initial guess should be changed. Whereas secant method only
% requires function values to get the answer in the interval.
% 6. At every iteration in secant method, we only require function
% to get the root ( this can be done if we store f(x_(n-1)), thus only 
% f(x_n) need to be calculated) Whereas in newton method, we require two functions 
% (f and f'). Thus the secant method may be better than newton method
% in actual running time of the algorithm. Another factor that may slow
% down newton's method is numerical evaluation of derivative.
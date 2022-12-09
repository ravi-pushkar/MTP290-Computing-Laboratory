%Q2 (With Secant Method) 
%(Put desired values of f,a,b,tol.)
% f is the function whose root is to be determined in (a,b).
% tol is the value upto which the root is to be accurate(10^-3 here).

function [ans,cnt]=qsb(f,a,b,tol)
m=a;
n=b;
p=n-f(n)*(n-m)/(f(n)-f(m));
cnt=0; %count of iterations
while(true)   
    if(abs(p-n)<tol) %the absolute difference b/w p & n is less than tol(given)
        ans=p % then cleary p(or n)is the root
        cnt=cnt %gives the no. of iterations
        break
    else
        % update the values to get closer to real root
        m=n;
        n=p;
        p=n-f(n)*(n-m)/(f(n)-f(m));
        cnt=cnt+1; %increasing the count
    end
end
end
% After seeing both qs and qsb(i.e. by bisection and by secant method), 
% we can clearly see that the no. of iterations required in secant method
% (cnt=3) is much less than in bisection method(cnt=17) to arrive at almost 
%the same solution( -0.040657043457031 in bisection method and  -0.040659288315725
%in secant method)in the interval[-1,0].
%While in interval[0,1],the bisection method leds to the solution
%0.962402343750000 with 17 iterations but the secant method leds to
%-0.040659288315572 with 10 iterations(more iterations than in the first part). This is because the secant method
%involves iterating towards the point which is towards the flow of gradient
% and always go towards it(i.e. towards that particular solution).
%But,the bisection method will always led to the solution(if any) in the given
%interval and behaves normally.

        
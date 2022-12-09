%Q2 (With Bisection Method) -
%(Put desired values of f,a,b,tol)
% f is the function whose root is to be determined in (a,b).
% tol is the value upto which the root is to be accurate(10^-3 here).

function [z,cnt]=qs(f,a,b,tol)
% Initial values(guess for a root)
m=a;
n=b;
p=(m+n)/2;
cnt=0;
while(true)
    if((sign(f(a)))*(sign(f(b)))==1)%if the sign of f(a) & f(b) is same then this method fails.
        fprintf("This method does not work in this domain. /n")
        break
    elseif(abs(m-n)<tol) %the absolute difference b/w m & n is less than tol(given)
        z=n % then cleary n is the root.
        cnt=cnt %no. of iterations
        break
    elseif(f(p)==0)
            z=p %if the value at p =0 the clearly p is a root
            cnt=cnt %no. of iterations
            break
    else
        if((sign(f(m)))*(sign(f(p)))==1) % sign of f(m) & f(p) are same
            % update the values to get closer to real root 
            m=p;
            p=(m+n)/2;
            cnt=cnt+1; %increasing the count of iterations by 1
        else % sign of f(n) & f(p) are same
            % update the values to get closer to real root
            n=p;
            p=(m+n)/2;
            cnt=cnt+1; %increasing the no. of iterations by 1
        end
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
%-0.040659288315572 with 10 iterations. This is because the secant method
%involves iterating towards the point which is towards the flow of gradient
% and always go towards it(i.e. towards that particular solution).
%But,the bisection method will always led to the solution(if any) in the given
%interval and behaves normally.
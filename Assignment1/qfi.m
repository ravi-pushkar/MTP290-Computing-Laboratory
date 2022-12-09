%Q5(With Bisection Method) 

%(Put desired values of f,tol)
% f is the function whose root(here it's "cos(x)-0.5-sin(x)).
% tol is the value upto which the root is to be accurate(10^-4 here).

function [z,cnt]=qfi(f,tol)
% Initial values(guess for a root)
m=0;
n=pi/4;
p=(m+n)/2;
cnt=0;
while(true)
    if(abs(m-n)<tol) %the absolute difference b/w m & n is less than tol(given)
        z=m % then cleary m(or n)is the root
        break
    else if(f(p)==0)
            z=p %if the value at p =0 the clearly p is a root
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
end

% I have used this method(Bisection Method) because I know that the function cos(x)-0.5-sin(x) 
% is continous in 0 to pi/4. Also f(0)=0.5>0 while f(pi/4)=-0.5<0. So, it was 
% quite intuitive to use bisection method for this. Also the least positivity
% is taken care of by the derivative of this function(-sin(x)-cos(x), which is
% negative in this entire interval.So, the function is strictly decreasing in 
% this interval and thus, attends 0 at only one place, which will be its least 
% positive solution(here it is 0.423953940251894).
%cnt is there to give the no. of iterations(although not mentioned in the question).

%Q3 && Q4(2nd Part: Modified Newton's Method)
%(Put desired values of f,tol,err.)
% f is the function whose root is to be determined.
% tol is the value upto which the root is to be accurate(10^-7 here).
% err is the minimum value upto which derivate can go(10^-7 here).
% mult is the multiplicity of the root

function [z,cnt,orcv]= qtb(f,tol,err,mult)
% Initial values(guess for a root).
m=input('Enter a initial guess for the root: ')
n=m-mult.*f(m)/dfn(f,m); %Using modified Newton's method for multiplicity greater than 1.
p=1;
q=1;
cnt=0;
ocon=0;

while(true)
    %After ith iteration,x(n+1)=n;x(n)=m and as soon as the absolute
    %difference between these two is greater than tol,the x(n+1) is the
    %root.
    
    if( abs(dfn(f,m)) <err) %The derivate is zero athis point and thus, the
        %function cannot be further optimised. That's, we arrive at the
        %point which is a root(with multiplicity 'mult') of the function f(x). 
        z=n % then cleary m(or n)is the answer
        cnt=cnt
        orcv=ocon
        break
    elseif(abs(m-n)<tol) %the absolute difference b/w a & b is less than tol(given)
        z=n % then cleary m(or n)is the answer
        cnt=cnt
        orcv=ocon
        break
    else
        % update the values to get closer to real root 
        q=p;
        p=m;
        m=n;
        n=m-mult.*f(m)/dfn(f,m);
        cnt=cnt+1;
        ocon=(log((abs(n-m))/abs(m-p))/(log(abs(m-p)/abs(p-q))));
    end
end
end
function df=dfn(f,x) %function for finding approximate derivative
eph=10^(-7); %taking h=10^-7 in f'(x)=(f(x+h)-f(x-h))/(2*h)
df=(f(x+eph)-f(x-eph))/(2*eph);
end
%No. of iterations = 3 (when the initial guess is -10) to get to the root
%0.999999955319170 and order of convergence = 1.896994843871736.
%Only one root(here ans) at a time can be found using Newton's method with a suitable
%choice of initial value(here m).
%But with the change of intial value, other roots can also be found. So
%change m to get other roots.
%Order of convergence(i.e. Q4) is also calculated here by the equation
%given in assignment and can be checked here only.
%Also,using modified newton method(used), we can have a better method for
%roots of multiplicity greater than 1 because it converges with lesser no. of iterations.
%Modified Newton method:-
%x(n+1)=x(n)-multiplicity*f(x(n))/f'(x(n))
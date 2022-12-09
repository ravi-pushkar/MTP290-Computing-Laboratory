%Q3 && Q4(1st Part: Newton's Method)
%(Put desired values of f,tol,err.)
% f is the function whose root is to be determined.
% tol is the value upto which the root is to be accurate(10^-7 here).
% err is the minimum value upto which derivate can go(10^-7 here).
%When the code runs, it first ask for the choice of initial value(i.e. m)
%and  accordingly gives the root.
%Order of convergence is given by con.

function [z,cnt,orcv]=qt(f,tol,err)
% Initial values(guess for a root).
m=input('Enter a initial guess for the root: \n');
d=dfn(f,m);
n=m-f(m)/d;
cnt=0;
p=1; %p & q are x(n-2) & x(n-1) respectively.Initialize p & q to be 1 and will be changed in the loop with each iterations.
q=1;
ocon=0;

while(true)
    %After ith iteration,x(n+1)=n;x(n)=m and as soon as the absolute
    %difference between these two is greater than tol,the x(n+1) is the
    %root.
    
    if( abs(d) <err) %Derivate=0 and thus y tend to infinity.
        fprintf("The derivate tends to 0\n")
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
        n=m-f(m)/dfn(f,m);
        ocon=(log((abs(n-m))/abs(m-p))/(log(abs(m-p)/abs(p-q)))); %order of 
        %convergence is calculate here by the formula given in the question
        %4 of the assignment 
        cnt=cnt+1;
    end
end
end
function df=dfn(f,x) %function for finding approximate derivative
eph=10^(-7); %taking h=10^-7 in f'(x)=(f(x+h)-f(x-h))/(2*h)
df=(f(x+eph)-f(x-eph))/(2*eph);
end
%No. of iterations = 61 (when the initial guess is -10) to get to the root
%0.999999688878295 with order of convergence= 1.017797355701848.
%Only one root(here ans) at a time can be found using Newton's method with a suitable
%choice of initial value(here m).
%But with the change of intial value, other roots can also be found. So
%change m to get other roots.
%Order of convergence(i.e. Q4) is also calculated here by the equation
%given in assignment and can be checked here only.


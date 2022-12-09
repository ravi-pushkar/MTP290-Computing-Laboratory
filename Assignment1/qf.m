%Q1 (Newton's Method)
%(Put desired values of f,a,b,tol,err.)
% f is the function whose root is to be determined in [a,b].
% tol is the value upto which the root is to be accurate(10^-5 here).
% err is the minimum value upto which derivate can go(10^-5 here)

function []=qf(f,a,b,tol,err)
% Initial values(guess for a root).
m=(a+b)/3;
d=dfn(f,m);
n=m-f(m)/d;
pt=[m]; %store the points and their corresponding values in a vector.
fxs=[0]; %store 0 corresponding to the points so that it can be plotted on the x axis.

while(true)
    %After ith iteration,x(n+1)=n;x(n)=m, and as soon as the absolute
    %difference between these two is greater than tol,the x(n+1) is the
    %root.
    
    if( abs(d)<err) %Derivate=0 and thus y tend to infinity.
        print("The derivate tends to 0")
        break
    elseif(abs(m-n)<tol) %the absolute difference b/w a & b is less than tol(given)
        ans=n % then cleary m(or n)is the root
        break
    else
        % update the values to get closer to real root 
        m=n;
        n=m-f(m)/dfn(f,m);
        pt=[pt m]; %expand all the vectors(i.e. add the points in the point vector and
        %the corresponding 0 in the fxs vector).
        fxs=[fxs 0];
    end
    maxi=max(pt); %find the maximum and the minimum out of all points stored in the point vector and then chose 15 points between them and flot it with f(x) on y-axis and these points on x-axis.
    mini=min(pt);
    pts=linspace(mini,maxi,15);
    plot(pts,f(pts),'-o')
    hold on
    plot(pt,fxs,'*') %Also plot all the points on the axis by assigning 0(Zero function) as y to each of these points
    hold off
end
end
function df=dfn(f,x) %function for finding approximate derivative
eph=10^(-5); %taking h=10^-5 in f'(x)=(f(x+h)-f(x-h))/(2*h)
df=(f(x+eph)-f(x-eph))/(2*eph);
end

            
            
            
        



        


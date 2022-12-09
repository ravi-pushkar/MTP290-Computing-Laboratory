%Problem 3
%Run this file to get the answer of Problem 3.
%Implementing of both the parts(Adams-Bashforth Prediction and Adams-Moulton Correction Method) has
%been done here
function [] = Problem3()
    %Taking all the values as given in the question(Problem 3)
    f = @(x,y) x + y;
    h=0.1;
    n=20;
    
    y1=0;
    x1=0;
    y2=RKY(x1,y1,h);
    x2=x1+h;
    y3=RKY(x2,y2,h);
    x3=x2+h;
    y4=RKY(x3,y3,h);
    x4=x3+h;
    ans_ABP=ABP(f,x1,y1,x2,y2,x3,y3,x4,y4,h,n);
    ans_AMCM=AMCM(f,x1,y1,x2,y2,x3,y3,x4,y4,h,n);
    fprintf("Answer using Adams-Bashforth Prediction method = %0.6f\n",ans_ABP);
    fprintf("Answer using Adams-Moulton Correction method = %0.6f\n",ans_AMCM);
    
end

function ansr=RKY(x,y,h) %For calculation yi(i=2:4), using Runge-Kutta method which if of similar order as Adams-Bashforth
    f = @(x,y) x + y;
    k1=h*f(x,y);
    k2=h*f(x+0.5*h,y+0.5*k1);
    k3=h*f(x+0.5*h,y+0.5*k2);
    k4=h*f(x+h,y+k3);
    ansr=y+(k1+2*k2+2*k3+k4)/6; 
end

% Answer using Adams-Bashforth Prediction method is 4.388679
% and it is 4.389070 using Adams-Moulton Correction method

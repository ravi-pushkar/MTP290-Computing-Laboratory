%Problem 3(Adams–Bashforth Prediction method)

function ansr = ABP(f,x1,y1,x2,y2,x3,y3,x4,y4,h,n)
    %f is the given function
    %xi,yi are the initial values of x and y respectively(i=0:3)
    %h is the step-size
    %n is the no of steps
    for i=4 : n
    y_n = y4 + (h/24) * (55*f(x4,y4) - 59*f(x3,y3) + 37*f(x2,y2) - 9*f(x1,y1));
    x_n= x4 + h;
    %Updating the vales of all xi and yi
    y1=y2; x1=x2;
    y2=y3; x2=x3;
    y3=y4; x3=x4;
    y4=y_n; x4=x_n;
    end
    ansr=y4; %the final answer is the final y4
end

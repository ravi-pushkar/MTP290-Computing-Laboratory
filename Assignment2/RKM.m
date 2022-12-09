%Problem 2(Runge-Kutta Method)
function ansr = RKM(f, x0, y0, h, n)
    %f is the given function
    %x0,y0 are the initial values of x and y respectively
    %h is the step-size
    %n is the no of steps
    x = [x0: h: x0+n*h]; %the range(or all values) of x
    y = zeros(1,n+1); %Taking all value of y as 0 initially
    y(1)=y0; %Taking initial value of y as y0
    for i=1 : n %Iterating n times
        %Setting the values of k1,k2,k3,k4
        a=x(1,i);
        b=y(1,i);
        k1=h*f(a,b);
        k2=h*f(a+0.5*h,b+0.5*k1);
        k3=h*f(a+0.5*h,b+0.5*k2);
        k4=h*f(a+h,b+k3);
        y(i+1)=y(i)+(k1+2*k2+2*k3+k4)/6; 
    end
    ansr = [x' y']; %Taking the output in a vertical tabular form
end
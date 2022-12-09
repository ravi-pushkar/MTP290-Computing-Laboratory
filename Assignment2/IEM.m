%Problem 1( Improved Euler Method)
function ansr = IEM(f, x0, y0, h, n)
    %f is the given function
    %x0,y0 are the initial values of x and y respectively
    %h is the step-size
    %n is the no of steps
    x = [x0: h: x0+n*h]; %the range(or all values) of x
    y = zeros(1,n+1); %Taking all value of y as 0 initially
    y(1)=y0; %Taking initial value of y as y0
    for j=1:n %Iterating for n number of times
       ystar = y(j)+h*f(y(j)); %Setting the value of y*
       y(j+1)=y(j)+(h/2)*(f(y(j))+f(ystar)); %Setting the values of y using the formula of Improved Euler method
    end
    ansr = [x' y']; %Taking the output in a vertical tabular form
end
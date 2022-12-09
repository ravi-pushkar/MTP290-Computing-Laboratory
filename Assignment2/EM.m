%Problem 1(Euler Method)
function ansr = EM(f, x0, y0, h, n)
    %f is the given function
    %x0,y0 are the initial values of x and y respectively
    %h is the step-size
    %n is the no of steps
    x = [x0: h: x0+n*h]; %the range(or all values) of x
    y = zeros(1,n+1); %Taking all value of y as 0 initially
    y(1)=y0; %Taking initial value of y as y0
    for j=1:n %Iterating for n number of times
       y(j+1)=y(j)+h*f(y(j)); %Setting the values of y using the formula Of Euler Method
    end
    ansr = [x' y']; % Taking the output in a vertical tabular form
end

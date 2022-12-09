%Problem 4(Trapezoidal rule)
function ansr = TR(f, a, b, n)
    %f is the given function
    %a and b are the lower bound and upper bound respectively in which
    %integration is to be done
    %n is the no of ordinates
    h=(b-a)/n; %Calculation of step-size using the formula
    I= 0; %Setting the initial value of integral as 0
    for i=1 : n-1
        I= I + f(a+i*h); %Updating the value of integral
    end
    ansr=h/2 *(2*I + f(a) + f(b)); %Getting the final value of integral using the formula of trapezoidal rule
end

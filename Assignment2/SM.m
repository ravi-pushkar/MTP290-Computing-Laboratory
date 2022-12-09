%Problem 4(Simpson rule)
function ansr = SM(f, a, b, n)
    %f is the given function
    %a and b are the lower bound and upper bound respectively in which
    %integration is to be done
    %n is the no of ordinates
    h=(b-a)/n; %Calculation of step-size using the formula
    p=a;
    I = f(a)+f(b); %Setting the initial value of integral as f(a)+f(b)
    for i=1 : n-1
        p=p+h;
        if(mod(i,2) == 1)
            I=I + 4*f(p); %When i is odd, 4 is multiplied with the function and added to the integral 
        else
            I=I + 2*f(p); %When i is odd, 2 is multiplied with the function and added to the integral
        end          
    end
    I=(h/3)*I; %Fially multiplying with h/3 to get the final answer
    ansr=I;
end
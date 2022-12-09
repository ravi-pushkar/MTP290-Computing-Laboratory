fprintf("Assignment1\n")
fprintf("Notations: z=ans=final answer; cnt=no. of iterations;  orcv=order of convergence \n")
fprintf("If asked to provide the inputs(or guess in Question3),give -10 as input (and then press enter) as given in question. \n") 
fprintf("\n")
fprintf("Question1\n")
fprintf("Question1 Using Newton's Method\n")
fprintf("\n")
disp('Press Any key for Question1 (Part(a))')
pause;
 
qf(@(x) x.^3-2*x.^2-5,1,4,10^-5,10^-5)
fprintf("\n")
disp('Press Any key for Question1 (Part(b))')
pause;

qf(@(x) x.*cos(x),0,pi,10^-5,10^-5)

fprintf("\n")
fprintf("Question2\n")
fprintf("Question 2 using Bisection Method\n")
fprintf("\n")
disp('Press Any key for Question2 (With Bisection Method) in [-1,0]')
pause;
fprintf("\n")
qs(@(x) 230*x.^4+18*x.^3+9*x.^2-221*x-9,-1,0,10^-5)
fprintf("\n")
disp('Press Any key for Question2 (With Bisection Method) in [0,1]')
pause;
 
fprintf("\n")
qs(@(x) 230*x.^4+18*x.^3+9*x.^2-221*x-9,0,1,10^-5)
fprintf("\n")


fprintf("Question 2 Using Secant Method\n")
fprintf("\n")
disp('Press Any key for Question2 (With Secant Method) in [-1,0]')
pause;
qsb(@(x) 230*x.^4+18*x.^3+9*x.^2-221*x-9,-1,0,10^-5)
fprintf("\n")
fprintf("\n")
disp('Press Any key for Question2 (With Secant Method) in [0,1]')
pause;
qsb(@(x) 230*x.^4+18*x.^3+9*x.^2-221*x-9,0,1,10^-5)
fprintf("\n")


fprintf("\n")
fprintf("Question 3 and Qustion 4 Part(A)\n")
fprintf("Question3 and Question 4 Using Newton's Method\n")
fprintf("\n")
fprintf("\n")
disp('Press Any key for Question3 and Question4 (Part(A) With Newton Method)')
pause;
 
 
qt(@(x) ((x-1).^4).*(x-5),10^-7,10^-7)
fprintf("\n")

fprintf("\n")
fprintf("Question 3 and Qustion 4 Part(B)\n")
fprintf("Question3 and Question 4 Using Modified Newton's Method\n")
fprintf("\n")
fprintf("\n")
disp('Press Any key for Question3 and Question4 (Part(B) With Modified  Newton Method)')
pause;
qtb(@(x) ((x-1).^4).*(x-5),10^-7,10^-7,4)
fprintf("\n")

fprintf("\n")
fprintf("Question5\n")
fprintf("Question5 using Bisection Method\n")
fprintf("\n")
fprintf("\n")
disp('Press Any key for Question5 (Using Bisection Method)')
pause;
qfi(@(x) cos(x)-0.5-sin(x),10^-4)

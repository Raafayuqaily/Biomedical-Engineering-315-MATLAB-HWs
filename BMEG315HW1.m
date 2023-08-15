%BMEG 315 HW #1 
%MATLAB Code

%Question 1
ode1 = diff(y,x) == y*x^3; %Defines the differential equation
cond1 = y(0) == 1; %Defines the condition
sol1 = dsolve(ode1,cond1); %Solves the differential equation
disp(sol1) %Displays the Solution

%Question 2
ode2 = diff(y,x) - y/x == x*exp(x); %Defines the differential equation
cond2 = y(1) == exp(1)-1; %Defines the condition
sol2 = dsolve(ode2,cond2); %Solves the differential equation
disp(sol2) %Displays the Solution

%Question 3
ode3 = diff(y,x,2) + 12*diff(y,x) +4*y == 0; %Defines the differential equation
sol3 = dsolve(ode3); %Solves the differential equation
disp(sol3) %Displays the Solution

%Question 4
d2y = diff(y,x,2); %Defines second order ODE
dy = diff(y,x); %Defines ODE
ode4 = d2y + 3*dy + 2*y == 3*x + 1; %Defines the differential equation
cond41 = y(0) == -7/4; %Defines the condition
cond42 = dy(0) == 3; %Defines the condition
cond4 = [cond41 cond42]; %Combines both conditions in an array
sol4 = dsolve(ode4,cond4); %Solves the differential equation
disp(sol4) %Displays the Solution

%Question 5
syms c(t) P S k Vp %Creates a symbolic function
ode5 = diff(c) == -((P*S+k)/Vp)*c; %Defines the differential equation
sol5 = dsolve(ode5); %Solves the differential equation
disp(sol5) %Displays the Solution

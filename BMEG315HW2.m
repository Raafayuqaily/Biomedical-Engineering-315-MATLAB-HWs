%BMEG 315 HW #2
%MATLAB Code

%Question 1e
v = 25; %mL 
q1 = 11.6667; %mL/s
q2 = 3.3333; %mL/s
p1 = 1.05; %g/mL
p2 = 0.75; %g/mL
t= 0:15; %seconds

%Transient Density(out)
y = (((p1*q1)+(p2*q2))/(q1+q2)) - ((q2*(p2-p1))/(q1+q2))./exp(((q1+q2)/v).*t); %Solution to differential equation

figure (1)
plot(t,y) %plots the qout(t) vs time
title('Density(out) vs Time') %add title to plot

%Steady State Density(out)
ss = (((p1*q1)+(p2*q2))/(q1+q2)) %steady state value for p(out)

%Based on the figure, it takes approximately 10 seconds to reach the
%steady state value

%Question 1f
syms pout(t) v q1 q2 p1 p2 t %Creates a symbolic function
ode1 = diff(pout,t) == (((p1*q1)+(p2*q2))/(v)) - ((pout*(q1+q2))/v); %Defines the differential equation
cond1 = pout(0) == p1; %Defines condition
sol1 = dsolve(ode1,cond1); %Solves the differential equation
disp(sol1) %Displays the Solution

v = 25; %mL 
q1 = 11.6667; %mL/s
q2 = 3.3333; %mL/s
p1 = 1.05; %g/mL
p2 = 0.75; %g/mL

ss1(t) = subs(sol1); %allows for symbolic substitution of values from dsolve into function
hold on
figure(2)
fplot(ss1(t), [0 10]) %plots the qout(t) vs time
title('Density(out) vs Time') %adds title to plot
ylim([0.98 1.05]) %adds limit to y axis
hold off

%Both plots are the exact same. Figure 2 is more smooth.  



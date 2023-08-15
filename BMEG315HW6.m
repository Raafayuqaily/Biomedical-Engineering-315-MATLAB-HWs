% Homework 6
% Question 2
c.V = 4000; %Volume
c.k = 1*10^5; %Constant

CA0 = 3/c.V; %Initial amount of A
CB0 = 6/c.V; %Initial amount of B
C0 = [CA0, CB0];

[t,y]= ode45(@(t,y) Toxic(t,y,c), 0:250, C0);

figure
plot(t,y)
xlabel('Time (min)')
ylabel('Concentration (mol/L)')
legend('A','B')
title('Concentration vs. Time')

%Question 3
c.VG = 280; %Volume of gut
c.VP = 2300; %Volume of plasma
c.Phi = 0.7; %Partition coefficient 
c.PS = 0.5; 
c.Ma = 500; %Dose
c.Qout=120; %Rate of Elimination

CG0 = 500/280; %Initial Aspirin concentration in gut
CP0 = 0; %Initial Aspirin concentration in plasma
C0 = [CG0, CP0];

[t,y]= ode45(@(t,y) Aspirin(t,y,c), 0:0.01:1000, C0);

figure
plot(t,y);
xlabel('Time (min)');
ylabel('Mass Concentration (mg/L)');
ylim([0 0.01])
legend('Gut','Plasma');
title('Concentration vs. Time');

function xp = Toxic(t,y,c);
V = c.V;
k = c.k;
xp = [0; 0]; 
xp(1) = -(k)*y(1)*y(2)/V;
xp(2) = -k*y(1)*y(2)/V; 
end

function xp = Aspirin(t,y,c);
VG = c.VG;
VP = c.VP;
Phi = c.Phi;
PS = c.PS;
Qout = c.Qout;  
xp = [0; 0]; 
%xp(1) = -(PS/VG)*((y(1) - Phi*y(2)));
xp(2) = (PS/VP)*((y(1) - Phi*y(2)))-Qout*y(2)/VP;  
end

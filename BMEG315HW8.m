%BMEG 315 HW 8
%Question 1

%Part a
Ro2 = 1*10^-7; %Consumption rate of oxygen in the tissue (cm^-3 s^-1)
Rw = 4*10^-4; %Capillary radius (cm)
D = 2*10^-5; %Diffusion coefficient (cm^2 s^-1)
Cb = 4.05*10^-8; %Oxygen concentration in the blood (mol cm^-3)
TA = 20; %Muscle tissue cross sectional area (cm^2)
Rt = [0:0.0001:0.005]; %Cylinder radius (cm)

Ct = (Ro2/(2*D)).*((Rt.^2./2)-(Rw^2/2)-(Rt.^2).*(log(Rt))+(Rt.^2).*(log(Rw)))+Cb;

figure
y = zeros(length(Rt),1);
plot(Rt,Ct,Rt,y)
title ('Oxygen Concentration vs Cylinder Radius')
xlabel ('Cylinder Radius (cm)')
ylabel ('Oxygen Concentration (mol cm^-3')

%Part b
CA = pi*0.0032^2; %Area of 1 cylinder
Number = TA/CA; %Number of cylinders in the tissue
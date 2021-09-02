close all;
clear all;
clc;

%Concentrating Cosine Antenna Response

figure(1)
hold on

theta = -90:.01:90;

%Influence of exponent change
Cos1 = cosd(theta); %Exponent 1
Cos2 = Cos1.^2; %Exponent 2
Cos3 = Cos1.^5; %Exponent 5

plot(theta,Cos1);
plot(theta,Cos2,'r');
plot(theta,Cos3,'k');

legend('Exponent = 1','Exponent = 2','Exponent = 5','location','northeast');
xlabel('Degrees'); ylabel('Response');
grid on
hold off
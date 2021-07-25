close all;
clear all;
clc;

%Criando a antena
theta = -90:.01:90;
Cos1 = cosd(theta);
Cos2 = Cos1.^2;
plot(theta,Cos1); hold on;
plot(theta,Cos2,'r');
legend('Exponent = 1','Exponent = 2','location','northeast');
xlabel('Degrees'); ylabel('Response');
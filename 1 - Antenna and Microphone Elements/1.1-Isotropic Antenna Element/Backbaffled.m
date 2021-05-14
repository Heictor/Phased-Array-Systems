close all;
clear all;
clc;
%Criando a antena
ha = phased.IsotropicAntennaElement(...
    'FrequencyRange',[3e8 1e9],...%Faixa de Frequência
    'BackBaffled',true) %Habilitar o backbaffle

figure(1)
plotResponse(...
    ha,1e9,...
    'Format','Polar',...%Formato do Gráfico
    'RespCut','3D',... %Corte da Resposta
    'Unit','pow'); %Unidade do gráfico
grid on

figure(2)
plotResponse(...
    ha,1e9,...
    'Format','Polar',...%Formato do Gráfico
    'RespCut','Az',... %Corte da Resposta
    'Unit','db'); %Unidade do gráfico);
grid on

figure(3)
plotResponse(...
    ha,1e9,...
    'Format','Polar',...%Formato do Gráfico
    'RespCut','El',... %Corte da Resposta
    'Unit','db'); %Unidade do gráfico);
grid on
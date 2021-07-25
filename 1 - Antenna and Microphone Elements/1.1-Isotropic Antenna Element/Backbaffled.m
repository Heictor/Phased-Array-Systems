close all;
clear all;
clc;
%% Sistema sem Deflexão
%Criando a antena
ha = phased.IsotropicAntennaElement(...
    'FrequencyRange',[3e8 1e9],...%Faixa de Frequência
    'BackBaffled',false)%Deflexão Traseira

%Plotando a resposta dela à uma frequência
figure(1)
plotResponse(...
    ha,1e9,...
    'Format','Polar',...%Formato do Gráfico
    'RespCut','3D',... %Corte da Resposta
    'Unit','pow'); %Unidade do gráfico

%% Sistema com Deflexão
%Criando a antena
ha = phased.IsotropicAntennaElement(...
    'FrequencyRange',[3e8 1e9],...%Faixa de Frequência
    'BackBaffled',true) %Habilitar o backbaffle

figure(2)
plotResponse(...
    ha,1e9,... %1GHz
    'Format','Polar',...%Formato do Gráfico
    'RespCut','3D',... %Corte da Resposta
    'Unit','pow'); %Unidade do gráfico
grid on

figure(3)
plotResponse(...
    ha,1e9,...
    'Format','Polar',...%Formato do Gráfico
    'RespCut','Az',... %Corte da Resposta
    'Unit','db'); %Unidade do gráfico);
grid on

figure(4)
plotResponse(...
    ha,1e9,...
    'Format','Polar',...%Formato do Gráfico
    'RespCut','El',... %Corte da Resposta
    'Unit','db'); %Unidade do gráfico);
grid on
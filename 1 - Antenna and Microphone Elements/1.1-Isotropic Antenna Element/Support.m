close all;
clear all;
clc;
%Criando a antena
ha = phased.IsotropicAntennaElement(...
    'FrequencyRange',[3e8 1e9],...%Faixa de Frequência
    'BackBaffled',false)%Deflexão Traseira

%Plotando a resposta dela à uma frequência
plotResponse(...
    ha,1e9,...
    'Format','Polar',...%Formato do Gráfico
    'RespCut','3D',... %Corte da Resposta
    'Unit','pow'); %Unidade do gráfico
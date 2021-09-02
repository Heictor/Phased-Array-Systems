%% Cosine Antenna Element
close all;
clear all;
clc;

%Creating Cosine Antenna
antennacos = phased.CosineAntennaElement(...
    'FrequencyRange',[1e9 1e10],...
    'CosinePower',[2 2]);

%Getting the response
plotResponse(antennacos,5e9,'RespCut','3D','Format','Polar');
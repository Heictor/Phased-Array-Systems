close all;
clear all;
clc;



antenna = phased.CustomAntennaElement(...
    'FrequencyVector', [0 1e10],...
    'FrequencyResponse', [0 50],...
    'PatternCoordinateSystem','az-el',...
    'AzimuthAngles', [-180:180],...
    'ElevationAngles', [-90:90],...
    'SpecifyPolarizationPattern', false,...
    'MagnitudePattern', zeros(181,361),...
    'PhasePattern', zeros(181,361))


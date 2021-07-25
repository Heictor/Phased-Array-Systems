close all;
clear all;
clc;

ha = phased.IsotropicAntennaElement(...
 'FrequencyRange',[8e9 12e9],...
 'BackBaffled',true)

respfreqs = 6e9:4e9:14e9;
respazangles = -100:50:100;
anresp = step(ha,respfreqs,respazangles)

release(ha)
respelangles = -90:45:90;
respangles = [respazangles; respelangles];
anresp = step(ha,respfreqs,respangles)

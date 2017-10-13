clear all; close all; clc;

I_stall = 80;
V_max_meas = 1;

R = 200e-6;
G = 100;
Vmax = G * I_stall * R


R2 = 500e-6;
G2 = 50;
Vmax2 = G2 * I_stall * R2



I_max_meas = V_max_meas/(R*G)

I_max_meas2 = V_max_meas/(R2*G2)
clear all; close all; clc;

format long
fs = 22000;
T_on = 0.5* 1/fs;
I = 6;
V_ripple = 1;

C_min = I * T_on/V_ripple

% T_on_ex = 0.5*1/10000;
% C_min_ex = 3 * T_on_ex/ 0.08
% 
% 
% 
% C_p2 = 50 *25e-6/1
% 
% L = 82.3e-6;
% I = 48/L *T_on

C_chosen = 4* 680e-6;
R = 75;
U = 24;
inrush_current = U/R
tau = C_chosen * R
charge_time = 5*tau


%%Freewheling diode:
R_inrush_relay_coil = 1800;
inrush_relay_max_I  = U/R_inrush_relay_coil

%Maybe same diode shoulde also be used for main relay:
main_relay_max_I= 0.36; 
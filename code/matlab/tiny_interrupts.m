clear all; close all; clc;

f_cpu = 8e6;
T_cpu = 1/f_cpu
prescale  = 1;
OCR1A = 1300;

T_interrupt_us = T_cpu * (OCR1A) *1000000
T_interrupt = T_cpu * (OCR1A)

T_interrupt_us_w = 160;
T_interrupt_us_w = 5000;
OCR1A_w_us = T_interrupt_us_w/(T_cpu*1000000)-1

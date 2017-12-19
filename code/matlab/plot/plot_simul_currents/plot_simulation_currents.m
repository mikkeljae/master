clear all; close all; clc;


M_load = csvread('load_current.csv',2,0);
load_time = M_load(:,1);
load_current = M_load(:,2);

supply = csvread('supply_current.csv',2,0);
supply_time = supply(:,1);
supply_current = supply(:,2);


plot(supply_time, supply_current, load_time, load_current)
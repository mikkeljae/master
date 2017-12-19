clc;clear;close all;
data = csvread('error_free/test1',3,1);

data_overflow = data(find(data(:,1)==max(data(:,1)))+1:end,:);
data_overflow(:,1) = data_overflow(:,1)+65535;
data_underflow = data(1:find(data(:,1)==max(data(:,1))),:);

data = [data_underflow ; data_overflow];

figure();
scatter(data(:,1),data(:,2),'.');

figure();
scatter(data(:,2),ones(size(data(:,1))),'.');


figure();
%scatter(data(:,1),ones(size(data(:,1))),'.')
%data_diff = diff(data(:,1));
%data_diff = sort(data_diff);
%hist(data_diff,1000);
%plot(data_diff)
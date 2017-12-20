clc;clear;close all;
to_tikz = 0;

data = csvread('error_free/test1',3,1);

data_overflow = data(find(data(:,1)==max(data(:,1)))+1:end,:);
data_overflow(:,1) = data_overflow(:,1)+65535;
data_underflow = data(1:find(data(:,1)==max(data(:,1))),:);

data = [data_underflow ; data_overflow];

figure();
scatter(data(:,1),data(:,2),'.');

figure();
scatter(data(:,1),zeros(size(data(:,1))),'filled','LineWidth',100)
xlim([1.51*10^4 1.518*10^4])
ylim([-0.1 0.2])
yticks([0])
xticks([1.51*10^4 1.512*10^4 1.514*10^4 1.516*10^4 1.518*10^4])
title('Received Packets')
xlabel('Time [us]')


if to_tikz == 1
   matlab2tikz('received_packets.tex');
end

%figure
%scatter(data(:,1),zeros(size(data(:,1))),'.')
%data_diff = diff(data(:,1));
%data_diff = sort(data_diff);
%hist(data_diff,1000);
%plot(data_diff)
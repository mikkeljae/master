clear; close all; clc;

to_tikz = 0;

C1_load = csvread('C1start-current-rails-w-load00000.txt',5,0);
C2_load = csvread('C2start-current-rails-w-load00000.txt',5,0);
C3_load = csvread('C3start-current-rails-w-load00000.txt',5,0);
C4_load = csvread('C4start-current-rails-w-load00000.txt',5,0);

t = C1_load(:,1);

figure();
plot(t,C1_load(:,2),t,C2_load(:,2))
ylim([-5 40])
title('Current Draw on DIS Low')
xlabel('Time [s]')
ylabel('Voltage [V]')
legend('MGATE_BH','24V Rail','Supply Current');

xlim([-1*10^-3 8*10^-3]);

yyaxis right
plot(t,C4_load(:,2),'color',[0 0.75 0])
ylabel('Current [A]')
ax = gca;
c = ax.Color;
ax.YColor = [0 0.75 0];
xlabel('Time (s)')
legend('MGATE_BH','24V Rail','Supply Current');

if to_tikz == 1
    cleanfigure()
    matlab2tikz('current_w_load.tex');
end


figure();
plot(t,C1_load(:,2),t,C2_load(:,2))
title('Current Draw on DIS Low')
xlabel('Time [s]')
ylabel('Voltage [V]')
xlim([-0.5*10^-4 3*10^-4]);
ylim([-5 40])

yyaxis right
plot(t,C4_load(:,2),'color',[0 0.75 0])
ylabel('Current [A]')
ax = gca;
c = ax.Color;
ax.YColor = [0 0.75 0];

legend('MGATE_BH','24V Rail','Supply Current');

if to_tikz == 1
    cleanfigure()
    matlab2tikz('current_w_load_closeup.tex');
end

C1_load_slow = csvread('C1start-current-rails-w-load-slowstart00000.txt',5,0);
C2_load_slow = csvread('C2start-current-rails-w-load-slowstart00000.txt',5,0);
C3_load_slow = csvread('C3start-current-rails-w-load-slowstart00000.txt',5,0);
C4_load_slow = csvread('C4start-current-rails-w-load-slowstart00000.txt',5,0);

t = C1_load_slow(:,1);

figure();
plot(t,C1_load_slow(:,2),t,C2_load_slow(:,2))
ylim([-5 40])
title('Current Draw on DIS Low After 4ms Wait')
xlabel('Time [s]')
ylabel('Voltage [V]')
xlim([-1*10^-3 8*10^-3]);
 
yyaxis right
plot(t,C4_load_slow(:,2),'color',[0 0.75 0])
ylabel('Current [A]')
ax = gca;
c = ax.Color;
ax.YColor = [0 0.75 0];
ylim([-5 40]);

 xlim([0 1.4e-4])
  ylim([-5 5])

legend('MGATE_BH','24V Rail','Supply Current');

if to_tikz == 1
    cleanfigure()
    matlab2tikz('current_w_load_slow.tex');
end

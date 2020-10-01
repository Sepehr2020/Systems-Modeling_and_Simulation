%ode45 simulation of nonlinear fluid resistor element

clc; close all

T_amb_discrete = [6,5.5,6,7,8,7,6,6,7,8,8,8] ;
days = 0:length(T_amb_discrete)-1;
Time = 0:(length(T_amb_discrete)-1)*30-1;
T_amb = interp1 (days, T_amb_discrete, Time/30, 'spline');

x1=0; %initial condition of time flow rate
t1=0;

X_i= [x1; t1];


[t, y] = ode45(@model, Time, X_i);

figure;
hold on;
title("Line Plot of Simulation")
xlabel ("Time (Days)");
ylabel("Temperature (^oC)");

plot(t/30, y(:,1), 'DisplayName', "Flow Rate to Pipe");
legend;
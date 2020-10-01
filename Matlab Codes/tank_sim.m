%Simulation of compressed air tank
%input: torque
%output: pressure in tank

clc;
close all;

t = 0:(((length(om_disc)-1)*30));
in = om_cont;       
sys = ss(A,B,C,D);
x0 = [0 0 0 0 1 0]; %Assume P = Patm

[y_2,t,x] = lsim(sys, in2, t, x0);
figure(1);
plot(t, y_2);
title("Output response");
legend ({'y1 = Tank Pressure'}, 'location', 'Southwest');
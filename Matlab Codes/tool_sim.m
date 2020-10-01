%simulation of output response
%input is output of tank_sim.m
%output: response of tool 

clc;
close all;

t = 0:(((length(om_disc)-1)*30));
in3 = in2; %output from tank_sim.m
sys = ss(A,B,C,D);
x0 = [0 0 1 0]; %assume all initial values zero, except pressure, which is at Patm

[y_3,t,x] = lsim(sys, in3, t, x0);
figure(1);
plot(t, y_3);
title("Output response");
legend ({'y1 = Pressure inside tank(Pa)'}, 'location', 'Southwest');
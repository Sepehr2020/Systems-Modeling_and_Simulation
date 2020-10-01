%Simulation of water wheel mechanical system
%inputs: space model of mechanical system, interpolated time, torque on
%wheel
%outputs: displacements of inertial elements, torque of shaft
clc;
close all;

t = 0:(((length(om_disc)-1)*30));
in = om_cont;
sys = ss(A,B,C,D);
x0 = [0 0 0 0]; %assume an equilibrium at the start

[y_1,t,x] = lsim(sys, in, t, x0);
figure(1);
plot(t, y_1);
title("Output response");
legend ({'y1 = theta1', 'y2 = theta2', 'y3 = torque'}, 'location', 'Southwest');
 figure(2);
 plot(t, x);
 title("State response");
 in2 = y_1(1:end, 3);
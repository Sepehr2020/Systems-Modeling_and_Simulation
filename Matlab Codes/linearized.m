%Model and simulation of single nonlinear element. 
%Was done quickly to confirm ode45 results
A = R_f/I_f;%
B = 1;      % State 
C = 1;      % Model
D = 0;      %
z = 0:5/(length(t)-1):5;
x0 = 5;
t = 0:(((length(om_disc)-1)*30));
in_nl = 100*(exp(z)/R_f).*sqrt(z);
sys = ss(A,B,C,D);

[y_4,z,x] = lsim(sys,in_nl , z, x0);
figure(1);
plot(z, y_4);
title("Linearized response");
legend ({'y1 = Flow rate in hose'}, 'location', 'Southwest');
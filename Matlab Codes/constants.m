%Contains all constants needed to model the whole system and subsystems.
%Additionally contains and interpolation of input data that is then passed
%to the simulation function as input.
%NOTE: Some constants may not be 100% accurate. While some were calculated
%via physical relations, some are simply ballpark estimates based on
%literature/past course assignments

J_t=2791; 
b_o=33;
k_1=24.65;
k_2=32.07;
b_1=334;
J_v=3780; 
k_3=0.00000237021;
k_4=0.00000237021;
ro_a = 13.5;
k_5 = 1.2345;
P_atm=1;
P_1 = 1;
B_1=9; 
V=2.265; %m^3
J_c=157.49;
b_2=470;
I_f=63534;
R_f=2;
m_max = ro_a * V;
m=2;%kg
A_1=0.6283;%m2
b_11=470; 
b_21=470;
C_f=0.0000023168+2.26535/B_1;
y = [0:11];
y2 = [0:1/30:11];

%interpolation of discreet input to a continuous function 330 days long
om_disc = 1.204e5.*[6, 5.5, 6, 7, 8, 7 ,6, 6, 7, 8, 8, 8];
om_cont = interp1 (y, om_disc, y2, 'spline');
t = 0:(((length(om_disc)-1)*30))-1;
plot(y2, om_cont);
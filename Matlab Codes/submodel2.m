%Fluid Model

A = [-b_o/J_t, -1/J_t, 0, 0, 0, 0;
     k_1, 0, -k_1, 0, 0, 0;
     0, 1/J_v, -b_1/J_v, -1/J_v, 0, 0;
     0, 0, k_2, 0, 0, 0;
     0, 0, 0, 0, 0, B_1/(V*k_3);
     0, 0, 0, 1/J_c, 1/(J_c*k_4), -b_2/J_c];
B = [1/J_t; 0;0;0;0;0];
C = [0,0,0,0,1,0; %takes tank pressure as output
     0,0,0,0,0,0
     0, 0, 0, 0, 0, 0];
D = [0;0;0];
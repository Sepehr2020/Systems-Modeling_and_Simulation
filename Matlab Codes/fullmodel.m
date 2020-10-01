%Model of entire system 
%can be used buy may produce results inconsistent with the theoretical
%model. Has been replaced by muliple subsystems for easier troubleshooting
%and modulation

A = [-b_o/J_t, -1/J_t, 0, 0, 0, 0, 0, 0, 0, 0;
     k_1, 0, -k_1, 0, 0, 0, 0, 0, 0, 0;
     0, 1/J_v, -b_1/J_v, -1/J_v, 0, 0, 0, 0, 0, 0;
     0, 0, k_2, 0, 0, 0, 0, 0, 0, 0;
     0, 0, B_1/(V*k_3), 0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 1/J_c, 1/(J_c*k_4), -b_2/J_c, 0, 0, 0, 0
     0, 0, 0, 0, 0, 0, R_f/I_f, 0, 0, 0;
     0, 0, 0, 0, 0, 0, 1/C_f, 0, 0, 0;
     0, 0, 0, 0, 0, 0, 0, A/m, -(b_11+b_21)/m, -1/m;
     0, 0, 0, 0, 0, 0, 0, 0, k_5, 0];
 B = [1/J_t; 0; 0; 0; 0; 0; 0; 0; 0; 0];
 C = [0 0 0 0 0 0 0 0  0 1];
 D = 0;
 
 
%Mechanical Model

A = [-b_o/J_t, -1/J_t, 0, 0;        %water wheel
     k_1, 0, -k_1, 0;               %flex shaft
     0, 1/J_v, -b_1/J_v, -1/J_v;    %flywheel
     0, 0, k_2, 0];                 %flex shaft
 B = [1/J_t; 0; 0; 0];   
 C = [0, 1/k_1, 0, 1/k_2; % 3 outputs to better analyse response
        0, 0, 0, 1/k_2;
        0, 0, 0, 1;
        0, 0, 1, 0];
 D = [0;0;0;0];
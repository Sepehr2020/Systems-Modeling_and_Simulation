% Compressor and tool

A = [R_f/I_f, 0, 0, 0;                  %flow rate
     1/C_f, 0, 0, 0;                    %tank pressure
     0, A_1/m, (-(b_11+b_21)/m), -1/m;  %internal velocity in nail gun
     0, 0, k_5, 0];                     %internal force in nail gun
 B = [1; 0; 0; 0.0005];
 C  = [0,1,0,-1/0.11];
 D = [0];
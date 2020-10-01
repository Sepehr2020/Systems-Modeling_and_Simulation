%Model to go with nonlinear ode45 simulation
%simple 2 equation representation of the subsystem
%If, k and n are nonlinearity constants

function dx= model(t,x)

If= 63534;
k=2;
n=1.23;

dx(1)=x(2);
dx(2)=[(k*x(2)^n/If)]*x(1)+1/12;


dx = dx';
end
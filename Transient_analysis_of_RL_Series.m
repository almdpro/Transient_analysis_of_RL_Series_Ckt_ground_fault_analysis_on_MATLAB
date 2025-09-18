
clc;
clear;
R = 50;        
L = 300;         
Vmax = 100;      
f = 1;           
alpha = pi/3;    
w = 2*pi*f;      
syms I(t)
a = dsolve(L*diff(I, t) + I*R == Vmax * sin(2*pi*f*t + alpha), I(0) == 0);
ezplot(a)      
xlabel('T(s)')
ylabel('(A)')
grid on

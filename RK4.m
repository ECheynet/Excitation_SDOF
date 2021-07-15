function [y] = RK4(Fun,t,dt,inputFun)
% [y] = RK4(Fun,t,dt,inputFun) solves numerically the equations of
% motion of a damped system
% 
% INPUT
% Fun : anonymous function  -- already defined in the main script
%  t: scalar  -- size: [1 x 1] -- time
% dt : scalar  -- size: [1 x 1] -- time step
% inputFun : structure -- size: [1 x 1] -- defned in main script. it containe
% state space representation of load, system properties and its
% displacement and veloctiy
% 
% OUTPUT
% y: matrix -- size [2x N] --time history of the system response to the load
%  First row is displacement, and second row is velocity
% 
% Example
% Fun = @(t,Y,A,F) A*Y+ F; 
% t = linspace(0,100,1000);
% dt = median(diff(t));
% y5 = zeros(size(t));
% clear inputFun
% Y = [0,10]';
% M = 1;
% K = 1;
% C = 0.005;
% F = cos(t); % expression of the harmonic force
% for ii=1:numel(t),
%     inputFun.A = [0, 1;-M\K,-M\C];
%     inputFun.F =[0;M\F(ii)];
%     inputFun.Y= Y;
%     [Y] = RK4(Fun,t,dt,inputFun);
%     y5(ii) = Y(1);
% end
% 
% author: E. Cheynet. University of Stavanger.  last updated: 31/12/2016

%%

% reduction of the variable number
Y = inputFun.Y;
F = inputFun.F;
A = inputFun.A;

% Runge-Kutta of order 4
k_1 = Fun(t,Y,A,F);
k_2 = Fun(t+0.5.*dt,Y+0.5*dt*k_1,A,F);
k_3 = Fun(t+0.5.*dt,Y+0.5*dt*k_2,A,F);
k_4 = Fun(t+dt,Y+k_3*dt,A,F);

% output
y = Y + (1/6)*(k_1+2*k_2+2*k_3+k_4)*dt;  
end


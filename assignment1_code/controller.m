function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

u = 0;

% FILL IN YOUR CODE HERE
Kp = 50;
Kv = 10;
error = s_des - s;
u = params.mass*(params.gravity + Kp*error(1) + Kv*error(2) + s(2)); 

end


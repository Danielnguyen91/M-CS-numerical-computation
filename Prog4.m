%% MCS Program 4 Spring 2014
%% Name: Toan Nguyen
%% Student Number: W00989643


function [ ] = Prog4()
  %  x = [-0.1;0.1]; eps = 10^-4;
     x = [-50;90;0.05]; eps = 10^-3;
     dx = 0.5;
     syms s1 s2 s3;   
     r = [s1 + s2*exp(1*s3) - 53.05;s1 + s2*exp(6*s3) - 73.04;s1 + s2*exp(11*s3) - 98.31;
     s1 + s2*exp(16*s3) - 139.78;s1 + s2*exp(21*s3) - 193.48;s1 + s2*exp(26*s3) - 260.20;
     s1 + s2*exp(31*s3) - 320.39]
     Dr = jacobian(r, [s1 s2 s3])
%    r = [sqrt((s1 + 1)^2 + (s2 - 1)^2) - 1;sqrt((s1 - 1)^2 + (s2 - 1)^2) - 1;sqrt(s1^2 + (s2 + 1)^2) - 1]
%    Dr = jacobian(r, [s1 s2])
    while norm(dx,2) > eps  
%    r = [sqrt((s1 + 1)^2 + (s2 - 1)^2) - 1;sqrt((s1 - 1)^2 + (s2 - 1)^2) - 1;sqrt(s1^2 + (s2 + 1)^2) - 1];
%    Dr = jacobian(r, [s1 s2]);
%    r = double(subs(r, {s1, s2}, {x(1),x(2)}));
%    Dr = double(subs(Dr, {s1, s2}, {x(1),x(2)}));
     r = [s1 + s2*exp(1*s3) - 53.05;s1 + s2*exp(6*s3) - 73.04;s1 + s2*exp(11*s3) - 98.31;
     s1 + s2*exp(16*s3) - 139.78;s1 + s2*exp(21*s3) - 193.48;s1 + s2*exp(26*s3) - 260.20;
     s1 + s2*exp(31*s3) - 320.39];
     Dr = jacobian(r, [s1 s2 s3]);
     r = double(subs(r, {s1, s2, s3}, {x(1),x(2),x(3)}));
     Dr = double(subs(Dr, {s1, s2, s3}, {x(1),x(2),x(3)}));
    if norm(dx,2) <= eps 
        break;
    end
    dx = inv(Dr.' * Dr) * (Dr.' * r); 
    x = x - dx
    nm = norm(dx,2);
  

    end
    
end
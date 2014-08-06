%% MCS 475 Program 1 Spring 2014
%% Name: Toan Nguyen
%% Student Number: W00989643

function [ ] = Prog1()
[x,y] = sub()
[m,n] = size(x);
for j = 1:n
    v(j,1) = y(j);
end
for i=2:n
    for j=1:n+1-i
        v(j,i) = (v(j+1,i-1) - v(j,i-1))/(x(j+i-1) - x(j));
    end
end
for i = 1:n
    c(i) = v(1,i);
end
    disp(c);
    
function[x,y] = sub()
 x = [1.00, 1.05, 1.10, 1.15]; y = [0.1924, 0.2414, 0.2933, 0.3492];
 %x = [0.698, 0.733, 0.768, 0.803, 0.902]; y = [0.7661, 0.7432, 0.7193, 0.6946, 0.6210];
% x = [0 2 3]; y = [1 2 4];
% w = [x y];
end

end
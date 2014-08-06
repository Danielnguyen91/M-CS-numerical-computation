%% MCS 475 Program 2 Spring 2014
%% Name: Toan Nguyen
%% Student Number: W00989643

function [ ] = Prog2()
[x,y] = sub();
n = length(x);
v1 = 0; vn = 0;
A = zeros(n,n);
r = zeros(n,1);
for i=1:n-1
    dx(i) = x(i+1) - x(i); dy(i) = y(i+1)-y(i);
end
for i=2:n-1
    A(i,i-1:i+1) = [dx(i-1) 2*(dx(i-1)+ dx(i)) dx(i)];
    r(i) = 3 * (dy(i)/dx(i) - dy(i-1)/dx(i-1));
end
A(1,1) = 1;
A(n,n) = 1;
coeff=zeros(n,5);
coeff(:,4) = A\r;
for i=1:1:n-1
    coeff(i,3) = (coeff(i+1,4) - coeff(i,4))/(3*dx(i));
    coeff(i,5) = dy(i)/dx(i)-dx(i)*(2*coeff(i,4)+coeff(i+1,4))/3;
    coeff(i,1) = x(i);
    coeff(i,2) = y(i);
end
coeff=coeff(1:n-1,1:5);
disp(coeff);


 clf;hold on;
 for i = 1:n-1
     x0 = linspace(x(i),x(i+1),100);
     dx = x0-x(i);
     y0 = coeff(i,3)*dx;
     y0 = (y0 + coeff(i,4)).*dx;
     y0 = (y0 + coeff(i,5)).*dx+y(i);
     plot ([x(i) x(i+1)],[y(i) y(i+1)], 'o', x0, y0)
 end
 hold off

    
function[x,y] = sub()
 x = [1,2,5,6,7,8,10,13,17,20,23,24,25,27,27.7,28,29,30];
 y = [3.0,3.7,3.9,4.2,5.7,6.6,7.1,6.7,4.5,7.0,6.1,5.6,5.8,5.2,4.1,4.3,4.1,3.0];

end

end
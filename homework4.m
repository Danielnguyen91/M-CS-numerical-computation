%% MCS Program 4 Winter 2014
%% Name: Toan Nguyen
%% Student Number: W00989643

function [ ] = homework4()
w = DT;
[n,m] = size(w);
k = 0;
x = zeros(n,k+1);
D = diag(diag(A));
L = tril(-A,-1);
U = triu(-A,1);
tol = 1e-05;
max_norm = 1e-04;
disp(w)
    while max_norm > tol
     %disp(k)
     %disp(x(:,k))
     %disp(max_norm)
     fprintf('k = %i ',k);
     fprintf('x(max_norm)= %2.6f x(k) = \n', max_norm);
     fprintf('%38.6f\n',x(:,k+1).');
      
     x(:,k+2) = inv(D-L)*U * x(:,k+1) + inv(D-L)*b; 
     max_norm = norm(x(:,k+2) - x(:,k+1), inf);
     k = k+ 1;
    % disp(x(1,k))
     % disp(x(2,k))
     %  disp(x(100,k))
    end
       
      % fprintf('%4i %12.6f %12.6f \n',k, x(:,k), max_norm)

function[w] = DT()
    A = [10 2 1 3;2 6 0 -1;-1 -2 5 1; 2 5 3 11 ];  b=[1 1 1 1]'; 
     
   %   A = [1 1/2 1/3; 1/4 1 1/5; 1/6 1/7 1]; b = [1 2 3]';
     %    A = [3 1 -1; 2 4 1; -1 2 5]; b = [4 1 1]';
    
     % e = ones(100,1); 
     % A = spdiags([-e 3*e -e], -1:1,100,100);
     % A(100,100) = 1.99;
      %disp(A)
     
      %b = zeros(100,1);
      %k = 0;
      % for i=1:100
      % b(i) = k + i;
      % end
     %  disp(b)
      w = [A b];
     
end

end
%% MCS Program 3 Winter 2014
%% Name: Toan Nguyen
%% Student Number: W00989643

function [ ] = homework3(w)
w = DT;
[n,m] = size(w);
disp(w);
    for j = 1 : n-1
        if (abs(w(j,j)) < 10^-7);
           disp('zero pivot encounter');
           return 
        end
        for i = j+1: n
            mult = w(i,j)/w(j,j);
            for k = j+1:(n+1)
                w(i,k) = w(i,k) - mult*w(j,k);        
            end
           
         %   mult = w(i,j);
          %  w(i,n+1) = w(i,n+1) - mult*w(j,n+1);
        end     
           disp(w);
    end
   
    
    for i = n : -1: 1
        for j = i+1: n
           w(i,n+1) = w(i,n+1) - w(i,j)*x(j);
        end
       x(i) = w(i,n+1)/w(i,i);
    end
    disp(x);     

function[w] = DT()
     % A = [1 1;3 3 ];  b=[4 5]'; 
       A = [1 1/2 1/3; 1/2 1/3 1/4; 1/3 1/4 1/5]; b = [1 1 1]';
    %   A = [2 6 0 4; -1 -2 0 1; 2 5 3 0; 0 2 9 8]; b = [2.001 3 4 1]';
     w = [A b];
end

end
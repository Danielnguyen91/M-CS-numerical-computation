function [ ] = test()
syms x1 x2 x3;
 r = [x1 + x2*exp(1*x3) - 53.05;x1 + x2*exp(6*x3) - 73.04;x1 + x2*exp(11*x3) - 98.31;
          x1 + x2*exp(16*x3) - 139.78;x1 + x2*exp(21*x3) - 193.48;x1 + x2*exp(26*x3) - 260.20;
         x1 + x2*exp(31*x3) - 320.39];
 dr = jacobian(r, [x1 x2 x3]);
 H1 = r(1) * hessian(r(1))
 H2 = r(2) * hessian(r(2))
 H3 = r(3) * hessian(r(3))
 H4 = r(4) * hessian(r(4))
 H5 = r(5) * hessian(r(5))
 H6 = r(6) * hessian(r(6))
 H7 = r(7) * hessian(r(7))
 H = H1 + H2 + H3 + H4 + H5 + H6 + H7;
end
function [percDiff, Q] = cyclePath(A,k,D)
    syms th
    Q = vpaintegral((A.^2*k.^2*cos(k.*th).^2 + 1)^(1/2), th, 0, D);
    percDiff = (Q/D - 1)*100;

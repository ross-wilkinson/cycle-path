function [percDiff, L, velocity, timePenalty] = cycleTimeAtoB(C1,teeth1,teeth2,cad,A,D)
    %CYCLETIMEATOB Calculate travel path distance, percentage increase, velocity
    % and time taken to travel the path length. 
    %   Inputs:
    %           WHEEL:  Tyre circumference in meters
    %           TEETH1: Number of teeth on front chain ring
    %           TEETH2: Number of teeth on rear sprocket
    %           CAD:    Cadence (rpm)
    %           A:      Amplitude of deviations from midline due to sway
    %           D:      Straight line distance from point A to B
    
    gain = teeth1/teeth2;
    lambda = C1*gain;
    k = 2*pi/lambda;
    
    [percDiff,L] = cyclePath(A,k,D);
    velocity = lambda/(60/cad);
    timePenalty = (L-D)/velocity;
    
end
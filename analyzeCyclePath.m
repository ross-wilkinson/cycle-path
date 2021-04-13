function [pd, L, v, dT] = analyzeCyclePath(c1,c2,c3,cad,A,D)
    %ANALYZECYCLEPATH Analyze effect of bicycle lean on travel path
    %distance by integrating sine wave function with respect to 
    %distance covered.
    %   Inputs:
    %       c1  - Tyre circumference (m)
    %       c2  - Front-chainring circumference (teeth)
    %       c3  - Rear-sprocket circumference (teeth)
    %       cad - Cadence (rpm)
    %       A   - Amplitude of path due to lean
    %       D   - Straight-line distance from point A to B
    %   Outputs:
    %       pd  - Percentage diff. between new path length and D
    %       L   - New path length (m)
    %       v   - Velocity travelled (m/s)
    %       dT  - Time penalty compared to D (s)
    
    % calculate gain and wave length
    gain = c2/c3;
    lambda = c1*gain;
    
    % calculate period with respect to distance along x-axis
    k = 2*pi/lambda;
    
    % solve sine-wave function to find new path length
    syms x
    L = vpaintegral((A.^2*k.^2*cos(k.*x).^2 + 1)^(1/2),x,0,D);
    
    % calculate increase in path length, ground velocity, and time
    pd = (L/D - 1)*100;    
    v = lambda/(60/cad);
    dT = (L-D)/v;
    
end
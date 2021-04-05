function [theta] = IKinemTh(x0, y0, z0,R,r,L,l)

    %     R = 88.00125522;
    %     r = 49.99032015;
    %     l = 256; 
    %     L =  115; 

    y1 = -R;
    y0 = y0-r; % shift center to edg    
    a = (x0^2 + y0^2 + z0^2 + L^2 - l^2 - y1^2)/(2*z0);
    b = (y1-y0)/z0;
    % discriminant
    D = -(a + b*y1)^2 + L^2*(b^2+1);
    if D < 0 
        theta = nan; % non-existing     
    else  
        yj = (y1 - a*b - sqrt(D)) / (b^2 + 1); 
        zj = a + b*yj;
        theta = atan(-zj/(y1-yj));
        if (yj>y1)
            theta = theta + pi;
        end
        theta = rad2deg(theta);
    end    
end
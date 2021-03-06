function Q = OZK(X, Y, Z,L)
    x0 = X;
    y0 = Y;
    z0 = Z;
    theta1 = IKinemTh(x0,y0,z0+23,L);
    Q(1)=theta1;
    %.......................................................
    x0 = X*cos(2*pi/3) + Y*sin(2*pi/3);
    y0 = Y*cos(2*pi/3) - X*sin(2*pi/3);
    z0 =Z;
    theta2 = IKinemTh(x0,y0,z0+23,L);
    Q(2)=theta2;
    %.......................................................
    x0 =X*cos(2*pi/3) - Y*sin(2*pi/3);
    y0 =Y*cos(2*pi/3) + X*sin(2*pi/3);
    z0 = Z;
    theta3 = IKinemTh(x0,y0,z0+23,L);
    Q(3)=theta3;
    %.......................................................
    if (~isnan(theta1) && ~isnan(theta2) && ~isnan(theta3))
        fl = 0;
    else
        fl = -1; % non-existing
    end     
end
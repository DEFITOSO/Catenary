function CatenariaODE

clc
close all

% El valor inicial de z_o es de:
    alpha = 0.0125;
    x0 = -20;  xf = 55;  y0 = 15;  yf = 35; 
      
    z0 = fzero(@(z0) raiz(z0,x0,xf,y0,yf,alpha),10); 
    
    [X,Sol] = ode45(@(x,y) sist(x,y,alpha),[x0 xf],[y0 z0]);
    figure
    plot(X,Sol(:,1))
    xlabel('Posición en x / m')
    ylabel('Posición en y / m')

end

function dy = sist(x,y,alpha) %#ok<INUSL>

    dy = zeros(2,1); % y(1) = y ; y(2) = z
    
    dy(1) = y(2);
    dy(2) = alpha*sqrt(1+y(2)^2);

end
% Construyendo la función para hallar zo por el mét. del disparo
function dif = raiz(zo,x0,xf,y0,yf,alpha)
    [X,Sol] = ode45(@(x,y) sist(x,y,alpha),[x0 xf],[y0 zo]);
    dif = yf - Sol(end,1);
end
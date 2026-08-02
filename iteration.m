function [xnew, ynew, znew] = iteration(x0, y0, z0, n) 
% code from PPRCHAOS5, altered to be in form of function
h = 0.01;

xv = zeros(1, n + 1);
yv = zeros(1, n + 1);
zv = zeros(1, n + 1);

xv(1) = x0;
yv(1) = y0;
zv(1) = z0;

f=@(x,y)(10 * (y - x));
g=@(x,y,z)(x * (28 - z) - y);
j=@(x,y,z)(x * y - (8 * z)/3);

for i = 1:n
    k1 = f(xv(i), yv(i));
    l1 = g(xv(i), yv(i), zv(i));
    m1 = j(xv(i), yv(i), zv(i));

    k2 = f(xv(i) + 0.5 * h * k1, yv(i) + 0.5 * h * l1);
    l2 = g(xv(i) + 0.5 * h * k1, yv(i) + 0.5 * h * l1, zv(i) + 0.5 * h * m1);
    m2 = j(xv(i) + 0.5 * h * k1, yv(i) + 0.5 * h * l1, zv(i) + 0.5 * h * m1);
    
    k3 = f(xv(i) + 0.5 * h * k2, yv(i) + 0.5 * h * l2);
    l3 = g(xv(i) + 0.5 * h * k2, yv(i) + 0.5 * h * l2, zv(i) + 0.5 * h * m2);
    m3 = j(xv(i) + 0.5 * h * k2, yv(i) + 0.5 * h * l2, zv(i) + 0.5 * h * m2);
    
    k4 = f(xv(i) + h * k3, yv(i) + h * l3);
    l4 = g(xv(i) + h * k3, yv(i) + h * l3, zv(i) + h * m3);
    m4 = j(xv(i) + h * k3, yv(i) + h * l3, zv(i) + h * m3);

    xv(i + 1) = xv(i) + (h/6) * (k1 + 2 * k2 + 2 * k3 + k4);
    yv(i + 1) = yv(i) + (h/6) * (l1 + 2 * l2 + 2 * l3 + l4);
    zv(i + 1) = zv(i) + (h/6) * (m1 + 2 * m2 + 2 * m3 + m4);

end

xnew = xv(n + 1);
ynew = yv(n + 1);
znew = zv(n + 1);

end

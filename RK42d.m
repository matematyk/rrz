function y = RK42d(f, y0, t0, T, N)

h = (T - t0)/(N-1);

y = y0;
for i = 1:(N-1)
    k1 = f(t0,y);
    k2 = f(t0+0.5*h, y+0.5*h*k1);
    k3 = f(t0+0.5*h, y+0.5*h*k2);
    k4 = f(t0+h, y+h*k3);
    y = y + (h/6)*(k1+ 2*k2 + 2*k3 + k4);
end
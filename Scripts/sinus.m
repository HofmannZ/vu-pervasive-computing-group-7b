A = 1;
f = 10;              %signal frequency = 10Hz
t = 0:0.01:0.1;    
y = A*sin(2*pi*f*t);
plot(t,y);
grid on;
xlabel ('Time t[seconds]');

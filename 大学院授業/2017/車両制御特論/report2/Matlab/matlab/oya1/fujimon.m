clc;
clear;
clf;

sim('model');

figure(1);
x_a = -(40/17)*exp(-4*t.time)+(6/17)*cos(t.time)-(24/17)*sin(t.time)-3; 
plot(t.time,x_a,'-',t.time,y.signals.values,'-');
legend('Analytic value ','Simulation value');
xlabel('time [s]');
ylabel('x(t)')

figure(2);
plot(t.time,y.signals.values,'-');
legend('Simulation value ');
xlabel('time [s]');
ylabel('x(t)')

figure(3);
x_a = -(40/17)*exp(-4*t.time)+(6/17)*cos(t.time)-(24/17)*sin(t.time)-3; 
plot(t.time,x_a,'-');
legend('Analytic value ');
xlabel('time [s]');
ylabel('x(t)')
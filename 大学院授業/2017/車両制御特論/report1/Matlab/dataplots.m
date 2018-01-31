clear;
clc;
clf;

sim('model'); %Simulinkモデルの読み込み

t = [0:0.01:20]
x = -(185/17)*exp(-4*t)+(8/17)*sin(t)+(32/17)*cos(t)+4; %解析解

figure(1);

xlabel('t [s]');
ylabel('x(t)');
axis([0 20 -6 7]),grid

hold on;
box on;
plot(t,x,'b') %解析解のプロット
plot(Time,y,'r-.') %Simulinkモデルの応答
legend('解析解', 'Simulinkによる応答');

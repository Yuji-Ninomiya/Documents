clc; %コマンドウィンドの消去
clear; %変数を全消去
clf; %グラフの消去

t=[0:0.1:20]; %配列の準備
y_a = -(40/17)*exp(-4*t)+(6/17)*cos(t)-(24/17)*sin(t)-3; 

sim('model')

hold on
axis([0 20 -5 -1.5]),grid %軸の範囲の設定 xmin xmax ymin ymax
xlabel(' t'); %軸のラベル名
ylabel(' y');


plot(t,y_a) %二次元プロット 横，縦
plot(t,y)
hold off
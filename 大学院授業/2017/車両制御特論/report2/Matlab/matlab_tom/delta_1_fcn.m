clc;    %コマンドウィンドウの消去
clear;  %変数を全消去
close all;%グラフの全消去

%t=[0:0.01:14];

sim('system4report');
y1=6*exp(-0.5*t)-11*exp(-3*t);
scrsz = get(groot,'ScreenSize');
yl = 3;
%set(gcf,'Position',[1,400,560,200])
delta1000 = '\delta_1=100';
delta2000 = '\delta_1=1000';
delta5000 = '\delta_1=10000';

for n = 1:6
    fig = figure;
    fig.Position = [0 0 640 320];
    fig.PaperPositionMode = 'auto';
    hold on%グラフの重ね書きの許可
    box on
    xlabel('$$t$$','interpreter','latex');
    if n==1
        %fig=figure('Name','results');
        fig.Name = 'results';
        ylabel('$$x(t)$$','interpreter','latex');
        axis([0 yl 0 1.8]);%x,y軸の範囲設定
        ref = results(1:yl,1);
        plot(t,results(:,1),'black')
        plot(t,results(:,2),'Color',[0 0.4470 0.7410])
        plot(t,results(:,3),'Color',[0.8500 0.3250 0.0980])
        plot(t,results(:,4),'Color',[0.9290 0.6940 0.1250])
        legend('refference model','\delta_1=100','\delta_1=1000','\delta_1=10000','Location','southeast')
    elseif n==2
        fig.Name = 'error';
        ylabel('$$\tilde{x}$$','interpreter','latex');
        %figure
        hold on
        axis([0 yl -0.2 0.15])
        plot(t,error)
    elseif n==3
        fig.Name = 'input';
        ylabel('$$u(t)$$','interpreter','latex');
        %figure
        hold on
        axis([0 yl -2 5.5])
        plot(t,input)
    elseif n==4
        fig.Name = 'alpha';
        ylabel('$$\hat{\alpha}$$','interpreter','latex');
        %figure
        hold on
        axis([0 yl -14 3.5])
        plot(t,alpha_hat)
        legend(delta1000,delta2000,delta5000,'Location','southeast')
    elseif n==5
        fig.Name = 'beta';
        ylabel('$$\hat{\beta}$$','interpreter','latex');
        %figure
        hold on
        axis([0 yl -0.05 0.05])
        plot(t,beta_hat)
        legend(delta1000,delta2000,delta5000,'Location','southeast')
    elseif n==6
        fig.Name = 'gamma';
        ylabel('$$\hat{\gamma}$$','interpreter','latex');
        %figure
        hold on
        %fig.ytick;
        axis([0 yl 0 0.05])
        plot(t,gamma_hat)
    end
    if (n>1)&&(n~=4)&&(n~=5)
        legend(delta1000,delta2000,delta5000)
    end
    hold off
    filename = sprintf('/home/kazuhiro/Documents/院授業/車両制御特論/tominaga/report2/matlab/fig/delta1_fcn_%s.eps',fig.Name);
    print(fig, '-r0','-depsc',filename);
end








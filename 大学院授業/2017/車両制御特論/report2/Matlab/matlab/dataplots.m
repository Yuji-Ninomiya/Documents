clc;
close all;

%入力r_d(t)に注意

%推定ゲイン all:=1

% % x(t)のグラフ
% figure(1);
% hold on;
% plot(x_21, 'DisplayName', 'δ=1')
% plot(x_210, 'DisplayName', 'δ=10')
% plot(x_2100, 'DisplayName', 'δ=100')
% plot(x_d, 'DisplayName', 'Ideal model')
% xlabel('t [s]');
% ylabel('x(t)');
% legend('show')
% box on;
% hold off;
% 
% 
% % \tilde{x}(t)のグラフ
% figure(2);
% hold on;
% plot(x_tilde_21, 'DisplayName', 'δ=1')
% plot(x_tilde_210, 'DisplayName', 'δ=10')
% plot(x_tilde_2100, 'DisplayName', 'δ=100')
% xlabel('t [s]');
% ylabel('$$\tilde x(t) $$', 'interpreter', 'latex');
% legend('show')
% box on;
% hold off;
% 
% % u(t)のグラフ
% figure(3);
% hold on;
% plot(u_21, 'DisplayName', 'δ=1')
% plot(u_210, 'DisplayName', 'δ=10')
% plot(u_2100, 'DisplayName', 'δ=100')
% xlabel('t [s]');
% ylabel('u(t)');
% legend('show')
% box on;
% hold off;
% 
% % \alpha_hatのグラフ
% figure(4);
% hold on;
% plot(alpha_hat_21, 'DisplayName', 'δ=1')
% plot(alpha_hat_210, 'DisplayName', 'δ=10')
% plot(alpha_hat_2100, 'DisplayName', 'δ=100')
% xlabel('t [s]');
% ylabel('$$\hat \alpha $$', 'interpreter', 'latex');
% legend('show')
% box on;
% hold off;
% 
% % \beta_hatのグラフ
% figure(5);
% hold on;
% plot(beta_hat_21, 'DisplayName', 'δ=1')
% plot(beta_hat_210, 'DisplayName', 'δ=10')
% plot(beta_hat_2100, 'DisplayName', 'δ=100')
% xlabel('t [s]');
% ylabel('$$\hat \beta $$', 'interpreter', 'latex');
% legend('show')
% box on;
% hold off;
% 
% % \gamma_hatのグラフ
% figure(6);
% hold on;
% plot(gamma_hat_21, 'DisplayName', 'δ=1')
% plot(gamma_hat_210, 'DisplayName', 'δ=10')
% plot(gamma_hat_2100, 'DisplayName', 'δ=100')
% xlabel('t [s]');
% ylabel('$$\hat \gamma $$', 'interpreter', 'latex');
% legend('show')
% box on;
% hold off;

%==================================================================

%入力ゲイン all:=100

% x(t)のグラフ
figure(1);
hold on;
plot(x_2a100, 'DisplayName', '\delta_{\alpha}=100');
plot(x_2a1000, 'DisplayName', '\delta_{\alpha}=1000')
plot(x_2a10000, 'DisplayName', '\delta_{\alpha}=10000')
plot(x_d, 'DisplayName', 'Ideal model')
xlabel('t [s]');
ylabel('x(t)');
legend('show')
box on;
hold off;


% \tilde{x}(t)のグラフ
figure(2);
hold on;
plot(x_tilde_2a100, 'DisplayName', '\delta_{\alpha}=100')
plot(x_tilde_2a1000, 'DisplayName', '\delta_{\alpha}=1000')
plot(x_tilde_2a10000, 'DisplayName', '\delta_{\alpha}=10000')
xlabel('t [s]');
ylabel('$$\tilde x(t) $$', 'interpreter', 'latex');
legend('show')
box on;
hold off;

% u(t)のグラフ
figure(3);
hold on;
plot(u_2a100, 'DisplayName', '\delta_{\alpha}=100')
plot(u_2a1000, 'DisplayName', '\delta_{\alpha}=1000')
plot(u_2a10000, 'DisplayName', '\delta_{\alpha}=10000')
xlabel('t [s]');
ylabel('u(t)');
legend('show')
box on;
hold off;

% \alpha_hatのグラフ
figure(4);
hold on;
plot(alpha_hat_2a100, 'DisplayName', '\delta_{\alpha}=100')
plot(alpha_hat_2a1000, 'DisplayName', '\delta_{\alpha}=1000')
plot(alpha_hat_2a10000, 'DisplayName', '\delta_{\alpha}=10000')
xlabel('t [s]');
ylabel('$$\hat \alpha $$', 'interpreter', 'latex');
legend('show')
box on;
hold off;

% \beta_hatのグラフ
figure(5);
hold on;
plot(beta_hat_2a100, 'DisplayName', '\delta_{\alpha}=100')
plot(beta_hat_2a1000, 'DisplayName', '\delta_{\alpha}=1000')
plot(beta_hat_2a10000, 'DisplayName', '\delta_{\alpha}=10000')
xlabel('t [s]');
ylabel('$$\hat \beta $$', 'interpreter', 'latex');
legend('show')
box on;
hold off;

% \gamma_hatのグラフ
figure(6);
hold on;
plot(gamma_hat_2a100, 'DisplayName', '\delta_{\alpha}=100')
plot(gamma_hat_2a1000, 'DisplayName', '\delta_{\alpha}=1000')
plot(gamma_hat_2a10000, 'DisplayName', '\delta_{\alpha}=10000')
xlabel('t [s]');
ylabel('$$\hat \gamma $$', 'interpreter', 'latex');
legend('show')
box on;
hold off;

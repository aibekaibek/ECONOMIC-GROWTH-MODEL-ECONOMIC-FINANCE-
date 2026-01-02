clear; clc;

% Parameters
params.A     = 1;
params.s     = 0.25;
params.n     = 0.02;
params.delta = 0.05;
params.alpha = 0.33;

k0 = 0.1;
tspan = [0 200];

% Solve ODE
[t,k] = ode45(@(t,k) solow_ode(t,k,params), tspan, k0);

% Output
y = params.A * k.^params.alpha;

% Steady state
k_star = (params.s*params.A/(params.n+params.delta))^(1/(1-params.alpha));

% Plot
figure;
plot(t,k,'LineWidth',2); hold on;
plot(t,y,'--','LineWidth',2);
yline(k_star,'k:','Steady state');
legend('Capital','Output','k*','Location','best');
xlabel('Time'); ylabel('Level');
title('Solow Growth Model');

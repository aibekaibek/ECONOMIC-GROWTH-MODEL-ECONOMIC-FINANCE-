function dkdt = solow_ode(t, k, params)
% dk/dt = s*A*k^alpha - (n+delta)*k

A     = params.A;
s     = params.s;
n     = params.n;
delta = params.delta;
alpha = params.alpha;

dkdt = s*A*k^alpha - (n + delta)*k;
end

subplot(1,2,1)
hold on
for k = [0.05, 0.1, 0.2, 0.3, 0.4, 0.5]
[t,m] = ode45(@(t,m) (-k)*m, [0 20], 5); plot(t,m, '.-');
end
way = compose(strcat('The first way of introducing drugs', '\n', 'into the body
(Q=0, m0=5)'));
title(way); legend('k=0.05', 'k=0.1', 'k=0.2', 'k=0.3', 'k=0.4', 'k=0.5')
subplot(1,2,2)
hold on
for m0 = [0.5, 1, 2, 3, 4, 5]
k = 0.5;
[t,m] = ode45(@(t,m) (-k)*m, [0 10], m0); plot(t,m, '.-');
end
way = compose(strcat('The first way of introducing drugs', '\n', 'into the body
(Q=0, k=0.5)'));
title(way); legend('m0=0.5', 'm0=1', 'm0=2', 'm0=3', 'm0=4', 'm0=5')
figure
subplot(1,2,1)
hold on
for k = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6]
Q = 0.1;
[t,m] = ode45(@(t,m) Q-k*m, [0 20], 0); plot(t,m, '.-');
end
way = compose(strcat('The second way of introducing drugs', '\n', 'into the body
(Q=0.1, m0=0)'));
title(way); legend('k=0.1', 'k=0.2', 'k=0.3', 'k=0.4', 'k=0.5', 'k=0.6')
subplot(1,2,2)
hold on
for Q = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6]
k = 0.3;
[t,m] = ode45(@(t,m) Q-k*m, [0 10], 0); plot(t,m, '.-');
end
way = compose(strcat('The second way of introducing drugs', '\n', 'into the body
(k=0.3, m0=0)'));
title(way); legend('Q=0.1', 'Q=0.2', 'Q=0.3', 'Q=0.4', 'Q=0.5', 'Q=0.6')
figure
subplot(1,3,1)
hold on
for k = [0.05, 0.1, 0.2, 0.3, 0.4, 0.5]
Q = 1;
[t,m] = ode45(@(t,m) Q-k*m, [0 10], 2); plot(t,m, '.-');
end
way = compose(strcat('The third way of introducing drugs', '\n', 'into the body
(Q=1, m0=2)'));
title(way); legend('k=0.05', 'k=0.1', 'k=0.2', 'k=0.3', 'k=0.4', 'k=0.5')
subplot(1,3,2)
hold on
for Q = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6]
k = 0.3;
[t,m] = ode45(@(t,m) Q-k*m, [0 10], 2); plot(t,m, '.-');
end
way = compose(strcat('The third way of introducing drugs', '\n', 'into the body
(k=0.3, m0=2)'));
title(way); legend('Q=0.1', 'Q=0.2', 'Q=0.3', 'Q=0.4', 'Q=0.5', 'Q=0.6')
subplot(1,3,3)
hold on
for m0 = [0.5, 1, 2, 3, 4, 5]
Q = 1; k = 0.5;
[t,m] = ode45(@(t,m) Q-k*m, [0 10], m0); plot(t,m, '.-');
end
way = compose(strcat('The third way of introducing drugs', '\n', 'into the body
(Q=1, k=0.5)'));
title(way); legend('m0=0.5', 'm0=1', 'm0=2', 'm0=3', 'm0=4', 'm0=5')
%main.m
clf
hold on


axis([0 200 0 100]);
DataAspectRatio = [1 1 1];

array = reset_balls(3, 0.1);
data = simulate_break(array)
%res = break_sweep(array);
%plot(res);
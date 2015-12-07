%main.m
clf
hold on


axis([0 200 0 100]);
%res = break_sweep()
%plot(res);
array = reset_balls(3, 0);
simulate_break(array);

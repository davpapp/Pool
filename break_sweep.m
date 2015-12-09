function res = break_sweep()
    res = [];
    angle = 10;
    for i=0:0.01:angle
       theta = i * pi / 180;
       vx = 6 * cos(theta);
       vy = 6 * sin(theta);
       array = reset_balls(vx, vy);
       res(end + 1) = simulate_break(array);
    end
end


function res = moveBallOde(~, ball_specs, balls)
    ball = balls;
    res = 1:length(ball_specs);
    for i = 1:length(ball)
        dx = ball(i).vx;
        dy = ball(i).vy;
        dvx = 0;
        dvy = 0;
        res(4*i - 3) = dx;
        res(4*i - 2) = dy;
        res(4*i - 1) = dvx;
        res(4*i) = dvy;
    end
    res = res';
end
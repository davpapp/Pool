%main.m
clf
ball1 = Ball()
ball2 = Ball()
ball2.pos_x = 80;
ball2.pos_y = 70;
ball2.v_d = 5;
ball2.v_theta = pi/4;
hold on

for i=1:100
    if (ball1.in_play)
        ball1 = moveBall(ball1);
        ball1 = checkTableCollision(ball1);
        plot(ball1.pos_x, ball1.pos_y, 'ro');
    end
    if (ball2.in_play)
        ball2 = moveBall(ball2);
        ball2 = checkTableCollision(ball2);
        plot(ball2.pos_x, ball2.pos_y, 'bo');
    end
end
%main.m
clf
ball1 = Ball()
ball2 = Ball()
ball2.pos_x = 80;
ball2.pos_y = 70;
ball2.v_d = 5;
ball2.v_theta = 0;
hold on
for i=1:100
    ball1 = moveBall(ball1);
    ball2 = moveBall(ball2);
    plot(ball1.pos_x, ball1.pos_y, 'ro');
    plot(ball2.pos_x, ball2.pos_y, 'bo');
end
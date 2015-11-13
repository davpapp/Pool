%main.m
clf
ball1 = Ball()
hold on
for i=1:100
    ball1 = moveBall(ball1);
    plot(ball1.pos_x, ball1.pos_y, 'ro');
    ball1.v_d
end
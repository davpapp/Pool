%main.m
ball1 = Ball()
hold on
for i=1:100
    moveBall(ball1);
    plot(ball1.pos_x, ball1.pos_y);
end
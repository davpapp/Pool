function ball = moveBall(ball)
    ball.pos_x = ball.pos_x + ball.vx;
    ball.pos_y = ball.pos_y + ball.vy;
    ball.vx = ball.vx*0.98;
    ball.vy = ball.vy*0.98;
    %ball.pos_x = ball.pos_x + cos(ball.v_theta) * ball.v_d;
    %ball.pos_y = ball.pos_y + sin(ball.v_theta) * ball.v_d;
    %ball.v_d = ball.v_d - 0.5*0.01*ball.radius^2*pi*1.28*ball.v_d^2 / ball.mass;
    %ball.v_d = mod(ball.v_d, 2 * pi);
end
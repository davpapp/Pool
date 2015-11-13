function ball = moveBall(ball)
    ball.pos_x = ball.pos_x + cos(ball.v_theta) * ball.v_d;
    ball.pos_y = ball.pos_y + sin(ball.v_theta) * ball.v_d;
    ball.v_d = ball.v_d - 0.5*0.1*ball.radius^2*pi*1.28*ball.v_d^2 / ball.mass;
end
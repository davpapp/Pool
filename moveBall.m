function ball = moveBall(Ball)
    ball.pos_x = Ball.pos_x + cos(Ball.v_theta) * Ball.v_d;
    ball.pos_y = Ball.pos_y + sin(Ball.v_theta) * Ball.v_d;
    ball.v_d = Ball.v_d - 0.5*0.01*Ball.radius^2*pi*1.28*Ball.v_d^2 / Ball.mass;
end
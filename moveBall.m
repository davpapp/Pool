function ball = moveBall(ball, timestep)
    ball.pos_x = ball.pos_x + ball.vx / timestep;
    ball.pos_y = ball.pos_y + ball.vy / timestep;
    ball.vx = ball.vx * 0.99 ;
    ball.vy = ball.vy * 0.99;
    % v = sqrt(ball.vx^2 + ball.vy^2);
   % v = v * 0.99;
   % ball.vx = ball.vx * v / sqrt(ball.vx^2 + ball.vy^2);
   % ball.vy = ball.vy * v / sqrt(ball.vx^2 + ball.vy^2);
    %ball.pos_x = ball.pos_x + cos(ball.v_theta) * ball.v_d;
    %ball.pos_y = ball.pos_y + sin(ball.v_theta) * ball.v_d;
    %ball.v_d = ball.v_d - 0.5*0.01*ball.radius^2*pi*1.28*ball.v_d^2 / ball.mass;
    %ball.v_d = mod(ball.v_d, 2 * pi);
end
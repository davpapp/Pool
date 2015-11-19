function ball = Ball(x, y, vx, vy, color)
    ball.in_play = true;
    ball.radius = 2.86;
    ball.mass = 170; 
    %ball.v_theta = theta;
    %ball.v_d = d;
    ball.pos_x = x;
    ball.pos_y = y;
    ball.vx = vx;
    ball.vy = vy;
    ball.color = color;
end
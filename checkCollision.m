function ball = checkCollision(ball, array)
    for i = 1:size(array)
       if ((ball.pos_x - array(i).pos_x)^2 + (ball.pos_y - array(i).pos_y)^2 < 5.72^2)
          %Balls collide 
       end
    end
end
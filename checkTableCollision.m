function ball = checkTableCollision (ball)
% Pocket Formation and taking the ball out of play

    if (ball.pos_x < 3.5 || ball.pos_x > 96.5)
        if (ball.pos_y < 3.5 || ball.pos_y > 96.5)
            ball.in_play = false;
        else
            ball.v_theta = pi - ball.v_theta;
        end
    end
    
    if (ball.pos_y > 96.5 || ball.pos_y < 3.5)
       if (ball.pos_x < 3.5 || ball.pos_x > 96.5 || (ball.pos_x > 46.5 && ball.pos_x < 53.5))
          ball.in_play = false;
       else
          ball.v_theta = -ball.v_theta;
       end
    end
    
 end
   
        
            
    
   
    

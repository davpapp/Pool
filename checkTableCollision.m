function ball = checkTableCollision (ball)
% Pocket Formation and taking the ball out of play

    if (ball.pos_x < 3.5 || ball.pos_x > 96.5) 
        if (ball.pos_y < 3.5 || ball.pos_y > 46.5)
            ball.in_play = false;
        else
            if (ball.v_theta < 180)
                ball.v_theta = mod(ball.v_theta, 90);
            else
                ball.v_theta = -mod(ball.v_theta, 90);
            end
            
            %ball.v_d = 10;
        end
    end
    % Middle pockets
    if (ball.pos_y < 3.5 || ball.pos_y > 96.5)
        if (ball.pos_x > 46.5 && ball.pos_x < 53.5)
            ball.in_play = false;
        else
                ball.v_theta = 360 - 2*ball.v_theta;
                ball.v_d = -1*ball.v_d;
            
           
        end
    end
 end
   
        
            
    
   
    

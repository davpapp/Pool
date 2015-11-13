function ball = checkTableCollision (ball)
% Pocket Formation and taking the ball out of play

    if (ball.pos_x < 3.5 || ball.pos_x > 96.5) 
        if (ball.pos_y < 3.5 || ball.pos_y > 46.5)
        ball.in_play = false;
        else 
        ball.in_play = true;
        end
  
       % Middle pockets
    if (ball.pos_x > 3.5 && ball.pos_x < 48.25 && ball.pos_x > 48.25) && (ball.pos_y < 3.5 || ball.pos_y > 46.5)
        ball.in_play = false;
    else ball.in_play = true;
    end
 end
   
        
            
    
   
    

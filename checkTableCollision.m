function ball = checkTableCollision (ball)
% Pocket Formation and taking the ball out of play

    if (ball.pos_x < 3.5 || ball.pos_x > 96.5) && (ball.pos_y < 3.5 || ball.pos_y > 46.5)
        % This if statement defines the inner boundary of the table
        if (ball.pos_x < 3.5 && (ball.pos_y < 3.5 || ball.pos_y > 46.5) || (ball.pos_x > 96.5 && (ball.pos_y <3.5 || ball.pos_y > 46.5)
            %Checks if the ball is the four corner pockets
            ball.in_play = false;
%         else wallBounce(Ball)
        end
    else ball.in_play = true;
       % Middle pockets
    if (ball.pos_x < 51.75 && ball.pos_x > 48.25) && (ball.pos_y < 3.5 || ball.pos_y > 46.5)
        ball.in_play = false;
    else ball.in_play = true;
    end
 end
   
        
            
    
   
    

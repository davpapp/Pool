function res = checkTableCollision (Ball)
% Pocket Formation and taking the ball out of play

    if (x < 3.5 || x > 96.5) && (y < 3.5 || y > 46.5)
        % This if statement defines the inner boundary of the table
        if (x < 3.5 && (y < 3.5 || y > 46.5) || (x > 96.5 && (y <3.5 || y > 46.5)
            %Checks if the ball is the four corner pockets
            ball.in_play = false;
        else wallBounce(Ball)
        end
    else ball.in_play = true;
       % Middle pockets
    if (x < 51.75 && x > 48.25) && (y < 3.5 || y > 46.5)
        ball.in_play = false;
    else ball.in_play = true;
    end
 end
   
        
            
    
   
    

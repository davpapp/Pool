function num_pocketed = simulate_break(array)
    timestep = 10;
    step = 0;
    while (~isOver(array))
        array = checkCollision(array);
        step = step + 1;
        for j=1:length(array)
            if (array(j).in_play)
                array(j) = moveBall(array(j), timestep);
                array(j) = checkTableCollision(array(j));
                 if (mod(step, 10) == 0) 
                     plot(array(j).pos_x, array(j).pos_y, array(j).color, 'MarkerSize', 14);
                     drawnow;
                 end
            end
        end
    end
    
    num_pocketed = 0;
    for i=1:length(array)
        if (array(i).in_play == false)
            num_pocketed = num_pocketed + 1;
        end
    end
end


function res = isOver(array)
    count = 0;     
    for i=lengh(array)
        if (array(i).in_play || (array(i).vx == 0 && array(i).vy == 0))
            count = count + 1;
        end
    end
end


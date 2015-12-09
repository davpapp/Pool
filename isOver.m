function res = isOver(array)
    count = 0;     
    for i=1:length(array)
        if (array(i).in_play == false)
            count = count + 1;
        elseif ((array(i).vx < 0.1 && array(i).vy < 0.1))
            count = count + 1;
        end
    end
    %count
    if (count == length(array))
        res = true;
    else
        res = false;
    end
end


function array2 = checkCollision(array)
array2 = array;
addIndexes = [];
addx = [];
addy = [];
for i = 1:length(array)
    if array(i).in_play
        for j = (i + 1):length(array)
            if array(j).in_play
                x_difference = (array(i).pos_x - array(j).pos_x)^2;
                y_difference = (array(i).pos_y - array(j).pos_y)^2;
                distance = sqrt(x_difference + y_difference);
                
                if (distance < array(i).radius*2)

                    v1 = [array(i).vx array(i).vy];
                    v2 = [array(j).vx array(j).vy];
                    x1 = [array(i).pos_x array(i).pos_y];
                    x2 = [array(j).pos_x array(j).pos_y];
                    den1 = norm(x1 - x2);
                    den2 = norm(x2 - x1);
                    v1prime = v1 - (x1 - x2) * dot(v1 - v2, x1 - x2) / den1^2;
                    v2prime = v2 - (x2 - x1) * dot(v2 - v1, x2 - x1) / den2^2;
                    
%                      array2(i).vx = v1prime(1);
%                      array2(i).vy = v1prime(2);
%                      array2(j).vx = v2prime(1);
%                      array2(j).vy = v2prime(2);             
                    
                     addIndexes(end + 1) = i;
                     addx(end + 1) = v1prime(1);
                     addy(end + 1) = v1prime(2);
                     addIndexes(end + 1) = j; 
                     addx(end + 1) = v2prime(1);
                     addy(end + 1) = v2prime(2);
                end
            end
        end
    end
end
for k = 1:length(addIndexes)
    indexValue = addIndexes(k);
    array2(indexValue).vx = 0;
    array2(indexValue).vy = 0;
end    
for q = 1:length(addIndexes)
    indexValue2 = addIndexes(q);
    
    num = 0;
    for e = 1:length(addIndexes)
       if (indexValue2 == addIndexes(e))
          num = num + 1; 
       end
    end
    if (num > 1)
        array2(indexValue2).vx = array2(indexValue2).vx - addx(q);
        array2(indexValue2).vy = array2(indexValue2).vy - addy(q);
    else
        array2(indexValue2).vx = array2(indexValue2).vx + addx(q);
        array2(indexValue2).vy = array2(indexValue2).vy + addy(q);
    end
    
    array2(indexValue2).vx;
    array2(indexValue2).vy;
    
end
end
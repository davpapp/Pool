function array2 = checkCollision(array)
array2 = array;
% addIndexes = [];
% addValuesVd = [];
% addValuesVtheta = [];
for i = 1:length(array)
    if array(i).in_play
        for j = (i + 1):length(array)
            if array(j).in_play
                x_difference = (array(i).pos_x - array(j).pos_x)^2;
                y_difference = (array(i).pos_y - array(j).pos_y)^2;
                distance = sqrt(x_difference + y_difference);
                
                if (distance < array(i).radius*2)
                    collision_angle = atan((array(j).pos_y - array(i).pos_y), (array(j).pos_x - array(i).pos_x)
                    v1 = [array(i).vx array(i).vy];
                    v2 = [array(j).vx array(j).vy];
                    x1 = [array(i).pos_x array(i).pos_y];
                    x2 = [array(j).pos_y array(j).pos_y];
                    v = x1 - x2
                    sv = v.^2;
                    dv = sum(sv)
                    mag = sqrt(dv);
                    v1prime = v1 - (x1 - x2) * dot(v1 - v2, x1 - x2) / mag^2;
                    v2prime = v2 - (x2 - x1) * dot(v2 - v1, x2 - x1) / mag^2;
                    
                    array2(i).vx = v1prime(1);
                    array2(i).vy = v1prime(2);
                    array2(j).vx = v2prime(1);
                    array2(j).vy = v2prime(2);
                    
                    %phi = mod((array(i).v_theta - array(j).v_theta), 2*pi);
                    %v1_x_prime = array(j).v_d * cos(array(j).v_theta - phi) * cos(phi) + array(i).v_d * sin(array(i).v_theta - phi)*cos(phi + pi/2);
                    %v1_y_prime = array(j).v_d * cos(array(j).v_theta - phi) * sin(phi) + array(i).v_d * sin(array(i).v_theta - phi)*sin(phi + pi/2);
                    %v2_x_prime = array(i).v_d * cos(array(i).v_theta - -phi)*cos(-phi) + array(j).v_d*sin(array(j).v_theta - -phi)*cos(-phi + pi/2);
                    %v2_y_prime = array(i).v_d * cos(array(i).v_theta - -phi)*sin(-phi) + array(j).v_d*sin(array(j).v_theta - -phi)*sin(-phi + pi/2);
                    
                    
                    %    addIndexes(end + 1) = i;
                    %    addIndexes(end + 1) = j;
                    %    addValuesVd(end + 1) = sqrt(v1_x_prime^2 + v1_y_prime^2);
                    %    addValuesVd(end + 1) = sqrt(v2_x_prime^2 + v2_y_prime^2);
                    %    addValuesVtheta(end + 1) = atan(v1_y_prime / v1_x_prime);
                    %    addValuesVtheta(end + 1) = atan(v2_y_prime / v2_x_prime);
                    
                    %array2(i).v_d = sqrt(v1_x_prime^2 + v1_y_prime^2);
                    %array2(i).v_theta = atan(v1_y_prime / v1_x_prime);
                    %array2(j).v_d = sqrt(v2_x_prime^2 + v2_y_prime^2);
                    %array2(j).v_theta = atan(v2_y_prime / v2_x_prime);
                end
            end
        end
    end
end
% for k = length(addIndexes)
%    array2(addIndexes(k)).v_d = addValuesVd(k);
%    array2(addIndexes(k)) += addValuesVd(k);
end
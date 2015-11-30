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
%                     collision_angle = atan((array(j).pos_y - array(i).pos_y) / (array(j).pos_x - array(i).pos_x));
%                     speed1 = sqrt(array(j).vx^2 + array(j).vy^2);
%                     speed2 = sqrt(array(i).vx^2 + array(i).vy^2);
%                     direction1 = atan(array(j).pos_y / array(j).pos_x);
%                     direction2 = atan(array(i).pos_y / array(i).pos_x);
%                     
%                     new_xspeed1 = speed1 * cos(direction1 - collision_angle);
%                     new_yspeed1 = speed1 * sin(direction1 - collision_angle);
%                     new_xspeed2 = speed2 * cos(direction2 - collision_angle);
%                     new_yspeed2 = speed2 * sin(direction2 - collision_angle);
%                     
%                     final_xspeed1 = new_xspeed2;
%                     final_xspeed2 = new_xspeed1;
%                     final_yspeed1 = new_yspeed1;
%                     final_yspeed2 = new_yspeed2;
%                     
%                     cosAngle = cos(collision_angle);
%                     sinAngle = sin(collision_angle);
%                     
%                     array2(i).vx = cosAngle * final_xspeed1 - sinAngle * final_yspeed1;
%                     array2(i).vy = sinAngle * final_xspeed1 + cosAngle * final_yspeed1;
%                     array2(j).vx = cosAngle * final_xspeed2 - sinAngle * final_yspeed2;
%                     array2(j).vy = sinAngle * final_xspeed2 + cosAngle * final_yspeed2;
%                     
%                     check if balls are too close after collision
%                     new_ball1_x = array(i).pos_x + array2(i).vx;
%                     new_ball1_y = array(i).pos_y + array2(i).vy;
%                     new_ball2_x = array(j).pos_x + array2(j).vx;
%                     new_ball2_y = array(j).pos_y + array2(j).vy;
%                     x_diff = (new_ball1_x - new_ball2_x) ^ 2;
%                     y_diff = (new_ball1_y - new_ball2_y) ^ 2;
%                     dist = sqrt(x_diff + y_diff);
%                     push the balls apart
%                     if (dist < array(i).radius * 2)
%                         array2(i).pos_x = array2(i).pos_x + 5;
%                         array2(i).pos_y = array2(i).pos_y + 5;
%                          array2(j).pos_x = array2(j).pos_x - 10;
%                         array2(j).pos_y = array2(j).pos_y - 10;
%                         new_ball2_x =
%                         new_ball2_y =
%                         tan((new_ball1_x - new_ball2_x) /
%                     end
                    
%                     array2(i).pos_x = array2(i).pos_x + array2(i).vx * 3;
%                     array2(i).pos_y = array2(i).pos_y + array2(i).vy * 3;
%                     array2(j).pos_x = array2(j).pos_x+ array2(j).vx * 3;
%                     array2(j).pos_y = array2(j).pos_y + array2(j).vy * 3;
%                     

                    v1 = [array(i).vx array(i).vy];
                    v2 = [array(j).vx array(j).vy];
                    x1 = [array(i).pos_x array(i).pos_y];
                    x2 = [array(j).pos_y array(j).pos_y];
                    den1 = norm(x1 - x2);
                    den2 = norm(x2 - x1);
                    v1prime = v1 - (x1 - x2) * dot(v1 - v2, x1 - x2) / den1^2;
                    v2prime = v2 - (x2 - x1) * dot(v2 - v1, x2 - x1) / den2^2;
                    
                    array2(i).vx = v1prime(1);
                    array2(i).vy = v1prime(2);
                    array2(j).vx = v2prime(1);
                    array2(j).vy = v2prime(2);
                   % array2(i).pos_x = array2(i).pos_x + 5;
                   % array2(i).pos_y = array2(i).pos_y + 5;
                    
                  %  array2(i).pos_x = array2(i).pos_x + v1prime(1) * 3;
                  %  array2(i).pos_y = array2(i).pos_y + v1prime(2) * 3;
                  %  array2(j).pos_x = array2(j).pos_x + v2prime(1) * 3;
                  %  array2(j).pos_y = array2(j).pos_y + v2prime(2) * 3;
                    
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
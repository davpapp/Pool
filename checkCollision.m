function array = checkCollision(array, index)
    ball = array(index);
    for i = 1:size(array)
       x_difference = (ball.pos_x - array(i).pos_x)^2;
       y_difference = (ball.pos_y - array(i).pos_y)^2;
       
       if (sqrt(x_difference + y_difference) < ball.radius*2) && (i ~= index)
          %Balls collide 
          phi = (ball.v_theta - array(i).v_theta);
          v1_x_prime = 2*array(i).mass * array(i).v_d^2 * cos(array(i).v_theta - phi) * cos(phi) / (ball.mass + array(i).mass) + ball.v_d * sin(ball.v_theta - phi)*cos(phi + pi/2);
          v1_y_prime = 2*array(i).mass * array(i).v_d^2 * cos(array(i).v_theta - phi)*sin(phi) / (ball.mass + array(i).mass) + ball.v_d*sin(ball.v_theta - phi)*sin(phi + pi/2);
          v2_x_prime = 2*ball.mass*ball.v_d^2*cos(ball.v_theta - phi)*cos(phi) / (ball.mass + array(i).mass) + array(i).v_d*sin(array(i).v_theta - phi)*cos(phi + pi/2);
          v2_y_prime = 2*ball.mass*ball.v_d^2*cos(ball.v_theta - phi)*sin(phi) / (ball.mass + array(i).mass) + array(i).v_d*sin(array(i).v_theta - phi)*sin(phi + pi/2);
          
          array(index).v_d = sqrt(v1_x_prime^2 + v1_y_prime^2);
          array(index).v_theta = atan(v1_y_prime / v1_x_prime);
          array(i).v_d = sqrt(v1_x_prime^2 + v1_y_prime^2);
          array(i).v_theta = atan(v2_y_prime / v2_x_prime);
       end
    end
end
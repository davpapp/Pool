%main.m
clf
ball1 = Ball(50, 0, 6, pi/3.5);
ball2 = Ball(50, 80, 5, -pi/4);
%ball3 = Ball(50, 50, 5, 2*pi/3);
hold on
array = [ball1 ball2];
for i=1:100
    for j=1:length(array)
       %if (array(i).in_play)
           array(j) = moveBall(array(j));
         %  array(i) = checkTableCollision(array(i));
           array = checkCollision(array, j);
           plot(array(j).pos_x, array(j).pos_y, 'ro');
           hold on
      % end
    end
    
end
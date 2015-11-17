%main.m
clf
ball1 = Ball(80, 60, 3, -pi/2.5, 'ro');
ball2 = Ball(20, 30, 5, 0.5, 'bo');
ball3 = Ball(50, 50, 4, 2*pi/3, 'go');
hold on
array = [ball1 ball2 ball3];

axis([0 100 0 100]);

for i=1:1000
    for j=1:length(array)
       if (array(j).in_play)
           array(j) = moveBall(array(j));
           array(j) = checkTableCollision(array(j));
           array = checkCollision(array, j);
           plot(array(j).pos_x, array(j).pos_y, array(j).color);
           drawnow
       end
    end
    
end
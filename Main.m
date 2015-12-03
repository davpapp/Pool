%main.m
clf
ball1 = Ball(20, 43, 2, 0, 'r.');
ball2 = Ball(120, 46, 0, 0, 'b.');
ball3 = Ball(120, 40, 0, 0, 'g.');
ball4 = Ball(61, 75, 2.5, -pi/4, 'ro');
ball5 = Ball(91, 16, 1.2, 15/7, 'ro');
ball6 = Ball(53, 39, 0.7, 6*pi/3, 'ro');
ball7 = Ball(27, 72, 0, -1, 'ro');
ball8 = Ball(38, 81, 1.9, 74, 'ro');
ball9 = Ball(71, 24, 1, 32, 'ro');
ball10 = Ball(32, 11, 1, 64, 'ro');
ball11 = Ball(7, 5, 1, 74, 'ro');
ball12 = Ball(50, 91, 1, 13, 'ro');

hold on
array = [ball1 ball2 ball3]% ball4]% ball5 ball6 ball7 ball8 ball9 ball10 ball11 ball12];


for i=1:400
    clf;
    axis([0 200 0 100]);
    hold on;
    array = checkCollision(array);
    for j=1:length(array)
       if (array(j).in_play)
           array(j) = moveBall(array(j));
           array(j) = checkTableCollision(array(j));
           plot(array(j).pos_x, array(j).pos_y, array(j).color, 'MarkerSize', 35);
           drawnow
       end
    end
   % array = checkCollision(array);
end
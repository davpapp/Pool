%main.m
clf
ball1 = Ball(5, 53, 3.5, 0, 'ro');
ball2 = Ball(50, 50, 0, 0, 'bo');
ball3 = Ball(54.3, 54.3, 0, 0, 'go');
ball4 = Ball(54.3, 45.7, 0 ,0, 'ko');
ball5 = Ball(58.6, 58.6, 0, 0, 'go');
ball6 = Ball(58.6, 50, 0, 0, 'ko');
ball7 = Ball(58.6, 41.4, 0, 0, 'ko');
ball8 = Ball(62.9, 62.9, 0, 0, 'go');
ball9 = Ball(62.9, 54.3, 0, 0, 'bo');
ball10 = Ball(62.9, 45.7, 0, 0, 'yo');
ball11 = Ball(62.9, 37.1, 0, 0, 'ro');

hold on
array = [ball1 ball2 ball3]; %ball4 ball5 ball6 ball7 ball8 ball9 ball10 ball11];% ball12];

axis([0 200 0 100]);

for i=1:200
    array = checkCollision(array);
    for j=1:length(array)
       if (array(j).in_play)
           array(j) = moveBall(array(j));
           array(j) = checkTableCollision(array(j));
           plot(array(j).pos_x, array(j).pos_y, array(j).color, 'MarkerSize', 10);
           drawnow
       end
    end
end

num_pocketed = 0;
for i=1:length(array)
   if array(i).in_play 
      num_pocketed = num_pocketed + 1;
   end
end
num_pocketed;
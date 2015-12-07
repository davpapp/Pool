%main.m
clf
 cueball = Ball(100, 50, 1, 0, 'm.');
ball1 = Ball(140, 50, 0, 0, 'r.');
%      r2 = -0.1+(0.1+0.1).*rand(1,1)
%Second Row
ball2 = Ball(145.2, 53, 0, 0, 'b.');
%      r3 = -0.1+(0.1+0.1).*rand(1,1)
ball3 = Ball(145.2, 47, 0, 0, 'g.');
%     r4 = -0.1+(0.1+0.1).*rand(1,1)
%Third Row
ball4 = Ball(150.4, 50, 0, 0, 'k.');
ball5 = Ball(150.4, 56, 0, 0, 'c.');
ball6 = Ball(150.4, 44, 0, 0, 'm.');
%Fourth Row
ball7 = Ball(155.6, 53, 0, 0, 'r.');
ball8 = Ball(155.6, 47, 0, 0, 'b.');
ball9 = Ball(155.6, 59, 0, 0, 'g.');
ball10 = Ball(155.6, 41, 0, 0, 'c.');
%Fifth Row
ball11 = Ball(160.8, 50, 0, 0, 'c.');
ball12 = Ball(160.8, 56, 0, 0, 'b.');
ball13 = Ball(160.8, 44, 0, 0, 'm.');
ball14 = Ball(160.8, 38, 0, 0, 'g.');
ball15 = Ball(160.8, 62, 0, 0, 'r.');

hold on
array = [ cueball ball1 ball2 ball3 ball4 ball5 ball6 ball7 ball8 ball9 ball10...
        ball11 ball12 ball13 ball14 ball15];



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
end
function array = reset_balls(vx, vy)
    ball1 = Ball(50, 50, vx, vy, 'ro');
    ball2 = Ball(150, 50, 0, 0, 'bo');
    ball3 = Ball(155, 52.9, 0, 0, 'go');
    ball4 = Ball(155, 47.1, 0 ,0, 'ko');
   % ball5 = Ball(158.6, 58.6, 0, 0, 'go');
   % ball6 = Ball(158.6, 50, 0, 0, 'ko');
   % ball7 = Ball(158.6, 41.4, 0, 0, 'ko');
   % ball8 = Ball(162.9, 62.9, 0, 0, 'go');
   % ball9 = Ball(162.9, 54.3, 0, 0, 'bo');
   % ball10 = Ball(162.9, 45.7, 0, 0, 'yo');
   % ball11 = Ball(162.9, 37.1, 0, 0, 'ro');
    array = [ball1 ball2 ball3 ball4];% ball5 ball6 ball7 ball8 ball9 ball10 ball11];
end


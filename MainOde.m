%MainOde
clf
hold on
global indexes

ball1 = Ball(20, 40, 1, 2, 'r');
ball2 = Ball(50, 60, 2, 1, 'b');
balls = [ball1 ball2];
ball_specs = 1:(length(balls) * 4);
for i=1:length(balls)
    ball_specs(4*i - 3) = balls(i).pos_x;
    ball_specs(4*i - 2) = balls(i).pos_y;
    ball_specs(4*i - 1) = balls(i).vx;
    ball_specs(4*i) = balls(i).vy;
end

for i=1:10
    %options = odeset(@checkForContact, 'Events');
    [X, Y] = ode45(@moveBallOde, [0 5], ball_specs, [], balls);
    for j=1:length(balls)
        plot(Y(:,4*j - 3), Y(:,4*j - 2));
    end
end
%MainOde
balls = [20 40 1 2 50 60 2 0 81 17 0.5 1.5]

for i=1:10
   % odeset = (@checkForContact, 'Events');
    [X, Y] = ode45(@moveBall, [0 100], balls);
    drawnow
end
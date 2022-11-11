% Innlevering 1

% Oppgave g

% Systemmatrise
A = [-10   0   -1
       0   0    1
     100   0   -0.1];

% Pådragsmatrise
B = [1 
     0 
     0];

% Målematrise
C = [0 1 0]; % Måle akselvinkelen

% Direkteoverføringsmatrise
D = 0;

% Finner transferfunskjonen til systemet
[num, den] = ss2tf(A,B,C,D);
sys = tf(num,den)   % Dropper semikolon for å få fram overføringsfunksjonen

stepplot(sys)
title('Stegresponsen for akselvinkelen uten tilbakekobling');
xlabel('Tid');
ylabel('Akselvinkel (θ)');

% \Oppgave g

%% 

% Oppgave h

% PID-konstanter
Kp = 3; % Skal bare ha p-leddet

% PID-regulator
Hr = pid(Kp);

% Setter opp systemet med feedback
sys_fb = feedback(Hr*sys, 1)

stepplot(sys_fb)
stepinfo(sys_fb)

% \Oppgave h

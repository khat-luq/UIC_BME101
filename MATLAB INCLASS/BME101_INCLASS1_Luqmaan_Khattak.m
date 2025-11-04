disp("Hello BME101!")

% Plotting
x = linspace(0,2*pi,200);
y = sin(x);
plot(x,y,":g","LineWidth",5);

% Labeling
xlabel("Time (s)")
ylabel("Amplitude")
title("Sine Grpah")
legend("Sine Wave")

% Formatting
xlim([-.5,2*pi+.5])
ylim([-2.5,1.5])
grid on

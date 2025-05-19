%% ASTE 583 HW #7
%% Problem #4 Part B
close all; clear;

f = @(x, theta) (theta.^2).*x.*exp(-1.*theta.*x)*0.5;

thetaStep = linspace(0,15);
plot(thetaStep,f(1,thetaStep))
ylim([0 0.4])
xlabel("\theta");
ylabel("Likelihood")
title("Likelihood Function for Erlang pdf")
text(mean(thetaStep),mean(f(1,thetaStep)),"Observed value of x = 1.0")

%% Problem #4 Part C
index = find(f(1,thetaStep) == max(f(1,thetaStep)));
xMax = thetaStep(index);
yMax = f(1,xMax);
grid on
text(xMax-0.06,yMax+0.009,"\downarrow MLE of \theta = "+sprintf("%1.6f",yMax));
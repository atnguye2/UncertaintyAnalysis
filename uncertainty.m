% Uncertainty Analysis
clc;clear all;close all;


%% Uncured and Cured Densities

formatSpec = '%10.4g %10.4g %10.4g %20s\n';
fprintf('%10s %10s %10s %20s\n','Min','Max','Avg','Densities')

% Uncured Specimen

% 0 deg
x = [16.4 2.06 .18 9.54]';
uncertainties = [.1 .001 .001,.001]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@density,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'UnC 0deg')
disp(relative); fprintf('\n');

% 45 deg
x = [17.0 2.18 0.37 17.4]';
uncertainties = [.1 .001 .001,.001]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@density,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'UnC 45deg')
disp(relative); fprintf('\n');

% 90 deg
x = [16.1 2.19 0.34 17.2]';
uncertainties = [.1 .001 .001,.001]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@density,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'UnC 90deg')
disp(relative); fprintf('\n');


% Cured Specimen

% 0 deg
x = [16.9 2.14 0.224 6.73]';
uncertainties = [.1 .001 .001,.001]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@density,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'C 0deg')
disp(relative); fprintf('\n');

% 45 deg
x = [17 2.42 0.252 12.3]';
uncertainties = [.1 .001 .001,.001]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@density,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'C 45deg')
disp(relative); fprintf('\n');

% 90 deg
x = [16.6 2.26 0.24 11.4]';
uncertainties = [.1 .001 .001,.001]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@density,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'C 90deg')
fprintf('\n')
disp(relative); fprintf('\n');

%% Fiber Volume Fractions
fprintf('%10s %10s %10s %20s\n','Min','Max','Avg','Fiber Vol Frac')

% Uncured Specimen

% 0 deg
x = [1.57 1.15 1.84]';
uncertainties = [0.005268 .005 .005]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@FiberFrac,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'UnC 0deg')
disp(relative); fprintf('\n');


% 45 deg
x = [1.28 1.15 1.84]';
uncertainties = [0.005115 .005 .005]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@FiberFrac,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'UnC 45deg')
disp(relative); fprintf('\n');


% 90 deg
x = [1.44 1.15 1.84]';
uncertainties = [0.004801 .005 .005]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@FiberFrac,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'UnC 90deg')
disp(relative); fprintf('\n');


% Cured Specimen
x = [1.53 1.84 .55 .45]';
uncertainties = [.005 .005 .005 .005]';
[~,~,U_rho_m] = evalUncert(@rhoM,x,uncertainties);

% 0 deg
x = [16.9 1.151111 1.84]';
uncertainties = [0.008942 U_rho_m .005]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@FiberFrac,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'C 0deg')
disp(relative); fprintf('\n');


% 45 deg
x = [17 1.151111 1.84]';
uncertainties = [0.005991 U_rho_m .005]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@FiberFrac,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'C 45deg')
disp(relative); fprintf('\n');


% 90 deg
x = [16.6 1.151111 1.84]';
uncertainties = [0.005796 U_rho_m .005]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@FiberFrac,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'C 90deg')
disp(relative); fprintf('\n');

fprintf('\n')
%% Shrinkage 
fprintf('%10s %10s %10s %20s\n','Min','Max','Avg','Shrinkage')

% 0 deg
x = [16.4 2.06 .18 16.9 .224 2.144]';
uncertainties = [.1 .001 .001 .1 .001 .001]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@shrink,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Shrink 0deg')
disp(relative); fprintf('\n');


% 45 deg
x = [17.0 2.18 0.37 17 .252 2.419]';
uncertainties = [.1 .001 .001 .1 .001 .001]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@shrink,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Shrink 45deg')
disp(relative); fprintf('\n');


% 90 deg
x = [16.1 2.19 0.34 16.6 .24 2.255]';
uncertainties = [.1 .001 .001 .1 .001 .001]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@shrink,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Shrink 90deg')
disp(relative); fprintf('\n');

fprintf('\n')
%% Required Force
fprintf('%10s %10s %10s %20s\n','Min','Max','Avg','Required Force')

% 0 deg
x = [16.4 2.06]'/2.54;
uncertainties = [.1 .001]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@force,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Force 0deg')
disp(relative); fprintf('\n');


% 45 deg
x = [17.0 2.18]'/2.54;
uncertainties = [.1 .001]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@force,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Force 45deg')
disp(relative); fprintf('\n');


% 90 deg
x = [16.1 2.19]'/2.54;
uncertainties = [.1 .001]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@force,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Force 90deg')
disp(relative); fprintf('\n');

fprintf('\n')


%% Young's Modulus
fprintf('%10s %10s %10s %20s\n','Min','Max','Avg',"Young's Modulus")
load('cfits.mat')

% DIC

[minWorst,MaxWorst,Avg,relative] = LRUncertanty(cfit_0_DIC);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 0deg')
disp(relative); fprintf('\n');


[minWorst,MaxWorst,Avg,relative] = LRUncertanty(cfit_45_DIC);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 45deg')
disp(relative); fprintf('\n');


[minWorst,MaxWorst,Avg,relative] = LRUncertanty(cfit_90_DIC);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 90deg')
disp(relative); fprintf('\n');


% Machine

[minWorst,MaxWorst,Avg,relative] = LRUncertanty(cfit_0);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 0deg')
disp(relative); fprintf('\n');


[minWorst,MaxWorst,Avg,relative] = LRUncertanty(cfit_45);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 45deg')
disp(relative); fprintf('\n');


[minWorst,MaxWorst,Avg,relative] = LRUncertanty(cfit_90);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 90deg')
disp(relative); fprintf('\n');

fprintf('\n')
%% Elastic Limit
fprintf('%10s %10s %10s %20s\n','Min','Max','Avg','Elastic Limit')
fs = 6894757.28*.01/100;
% DIC

x = [0.0107]';
uncertainties = [.1*x]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 0deg')
disp(relative); fprintf('\n');


x = [0.0114]';
uncertainties = [.1*x]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 45deg')
disp(relative); fprintf('\n');


x = [0.00482]';
uncertainties = [.1*x]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 90deg')
disp(relative); fprintf('\n');


% Machine

x = [0.00996]';
uncertainties = [max(fs,.005*x)]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 0deg')
disp(relative); fprintf('\n');


x = [0.0121]';
uncertainties = [max(fs,.005*x)]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 45deg')
disp(relative); fprintf('\n');


x = [0.00454]';
uncertainties = [max(fs,.005*x)]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 90deg')
disp(relative); fprintf('\n');

fprintf('\n')
%% Ultimate Strength
fprintf('%10s %10s %10s %20s\n','Min','Max','Avg','Ultimate Strength')

% DIC

x = [847e6]';
uncertainties = [.1*x]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 0deg')
disp(relative); fprintf('\n');


x = [210e6]';
uncertainties = [.1*x]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 45deg')
disp(relative); fprintf('\n');


x = [47.9e6]';
uncertainties = [.1*x]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 90deg')
disp(relative); fprintf('\n');


% Machine

x = [847e6]';
uncertainties = [max(fs,.005*x)]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 0deg')
disp(relative); fprintf('\n');


x = [210e6]';
uncertainties = [max(fs,.005*x)]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 45deg')
disp(relative); fprintf('\n');


x = [47.9e6]';
uncertainties = [max(fs,.005*x)]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 90deg')
disp(relative); fprintf('\n');

fprintf('\n')
%% Ultimate Strain
fprintf('%10s %10s %10s %20s\n','Min','Max','Avg','Ultimate Strain')

% DIC

x = [.0107]';
uncertainties = [.1*x]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 0deg')
disp(relative); fprintf('\n');


x = [.0967]';
uncertainties = [.1*x]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 45deg')
disp(relative); fprintf('\n');


x = [.00482]';
uncertainties = [.1*x]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 90deg')
disp(relative); fprintf('\n');


% Machine

x = [.00996]';
uncertainties = [.005*x]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 0deg')
disp(relative); fprintf('\n');


x = [.0938]';
uncertainties = [.005*x]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 45deg')
disp(relative); fprintf('\n');


x = [.0186]';
uncertainties = [.005*x]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@mesure,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 90deg')
disp(relative); fprintf('\n');

fprintf('\n')

%% Specific Youngs Modulus
fprintf('%10s %10s %10s %20s\n','Min','Max','Avg','E_sp')
fs = 6894757.28*.01/100;
% DIC

x = [78.1e9 0.831]';
uncertainties = [.1*x(1) 0.006171]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@specific,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 0deg')
disp(relative); fprintf('\n');


x = [15.6e9 1.19]';
uncertainties = [.1*x(1) 0.008433]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@specific,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 45deg')
disp(relative); fprintf('\n');


x = [9.8e9 1.27]';
uncertainties = [.1*x(1) 0.009292]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@specific,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 90deg')
disp(relative); fprintf('\n');


% Machine

x = [83.1e9 0.831]';
uncertainties = [max(fs,.005*x(1)) 0.006171]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@specific,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 0deg')
disp(relative); fprintf('\n');


x = [14.8e9 1.19]';
uncertainties = [max(fs,.005*x(1)) 0.008433]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@specific,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 45deg')
disp(relative); fprintf('\n');


x = [10.9e9 1.27]';
uncertainties = [max(fs,.005*x(1)) 0.009292]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@specific,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 90deg')
disp(relative); fprintf('\n');

fprintf('\n')
%% Specific Str
fprintf('%10s %10s %10s %20s\n','Min','Max','Avg','Str_sp')
fs = 6894757.28*.05/100;
% DIC

x = [847e6 0.831]';
uncertainties = [.1*x(1) 0.006171]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@specific,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 0deg')
disp(relative); fprintf('\n');


x = [210e6 1.19]';
uncertainties = [.1*x(1) 0.008433]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@specific,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 45deg')
disp(relative); fprintf('\n');


x = [47.9e6 1.27]';
uncertainties = [.1*x(1) 0.009292]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@specific,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'DIC 90deg')
disp(relative); fprintf('\n');


% Machine

x = [847e6 0.831]';
uncertainties = [max(fs,.005*x(1)) 0.006171]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@specific,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 0deg')
disp(relative); fprintf('\n');


x = [210e6 1.19]';
uncertainties = [max(fs,.005*x(1)) 0.008433]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@specific,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 45deg')
disp(relative); fprintf('\n');


x = [47.9e6 1.27]';
uncertainties = [max(fs,.005*x(1)) 0.009292]';
[minWorst,MaxWorst,Avg,relative] = evalUncert(@specific,x,uncertainties);
fprintf(formatSpec,minWorst,MaxWorst,Avg,'Machine 90deg')
disp(relative); fprintf('\n');

fprintf('\n')
%% Functions to Calculate Things
function res = specific(x)
res = x(1)/x(2);
end

function res = mesure(x)
res = x;
end

function [minWorst,MaxWorst,Avg,rel] = LRUncertanty(x)
r = confint(x);
MaxWorst = r(2)-x.a;
minWorst = x.a-r(1);
Avg = range(r)/2;
rel = NaN;
end
function res = force(x)
res = x(1)*x(2)*150;
end

function res = shrink(x)
res = (rect(x(1:3))-rect(x(4:6)))/rect(x(1:3));
end

function res = rhoM(x)
res = (x(1)-x(2)*x(3))/x(4);
end

function res = FiberFrac(x)
res = (x(1)-x(2))/(x(3)-x(2));
end

function V = rect(x)
V = x(1)*x(2)*x(3);
end

function rho = density(x)
rho = x(4)/rect(x(1:3));
end

function [minus_percent,plus_percent,Avg,relative] = evalUncert(f,x,uncertainties)
[~,~,~,f_MID,~,minus_percent,plus_percent] = worstcase(@(x) f(x),x,uncertainties);
jac = jacobianest(@(x) f(x),x);
ABS=sqrt(dot(jac.*uncertainties,jac.*uncertainties));
Avg = ABS;
relative = jac.*uncertainties/norm(jac.*uncertainties);
minus_percent = f_MID*minus_percent;
plus_percent = f_MID*plus_percent;
end
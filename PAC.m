%% PAC time course
load('PAC_trace.mat')
AMY_HPC_color = [255 0 255]./255;
HPC_OFC_color = [0 128 255]./255;
AMY_OFC_color = [66 128 0]./255;

% AMY-HPC
figure('rend','painters','pos',[10 10 800 250]);
b1 = boundedline(time, PAC_AMYtoHPC_mean, PAC_AMYtoHPC_sem, 'cmap', AMY_HPC_color,'alpha'); hold on
b1.LineWidth = 2;
b2 = boundedline(time, PAC_HPCtoAMY_mean, PAC_HPCtoAMY_sem, '--', 'cmap', AMY_HPC_color,'alpha'); 
b2.LineWidth = 2;
plot([0 0], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([1 1], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([1.5 1.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([2.5 2.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([3.5 3.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
xlim([-0.5 3.5])
ylim([-4 4])
set(gca, 'xtick', [-0.5 0 1 1.5 2.5 3.5],'ytick', [-4, -2, 0, 2, 4], 'fontSize', 30, ...
         'fontWeight', 'bold', 'LineWidth', 2, 'box', 'on');

% HPC - OFC
figure('rend','painters','pos',[10 10 800 250]);
b1 = boundedline(time, PAC_HPCtoOFC_mean, PAC_HPCtoOFC_sem, 'cmap', HPC_OFC_color,'alpha'); hold on
b1.LineWidth = 2;
b2 = boundedline(time, PAC_OFCtoHPC_mean, PAC_OFCtoHPC_sem, '--', 'cmap', HPC_OFC_color,'alpha'); 
b2.LineWidth = 2;
plot([0 0], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([1 1], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([1.5 1.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([2.5 2.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([3.5 3.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
xlim([-0.5 3.5])
ylim([-4 4])
set(gca, 'xtick', [-0.5 0 1 1.5 2.5 3.5],'ytick', [-4, -2, 0, 2, 4], 'fontSize', 30, ...
         'fontWeight', 'bold', 'LineWidth', 2, 'box', 'on');
     
% AMY - OFC
figure('rend','painters','pos',[10 10 800 250]);
b1 = boundedline(time, PAC_AMYtoOFC_mean, PAC_AMYtoOFC_sem, 'cmap', AMY_OFC_color,'alpha'); hold on
b1.LineWidth = 2;
b2 = boundedline(time, PAC_OFCtoAMY_mean, PAC_OFCtoAMY_sem, '--', 'cmap', AMY_OFC_color,'alpha'); 
b2.LineWidth = 2;
plot([0 0], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([1 1], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([1.5 1.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([2.5 2.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([3.5 3.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
xlim([-0.5 3.5])
ylim([-4 4])
set(gca, 'xtick', [-0.5 0 1 1.5 2.5 3.5],'ytick', [-4, -2, 0, 2, 4], 'fontSize', 30, ...
         'fontWeight', 'bold', 'LineWidth', 2, 'box', 'on');

%% Correlation trace between PAC and contextual modulation strength
load('corr_PAC_mod.mat')
AMY_HPC_color = [255 0 255]./255;
HPC_OFC_color = [0 128 255]./255;
AMY_OFC_color = [66 128 0]./255;

% AMY - HPC, corr
figure('rend','painters','pos',[10 10 800 250]);
b1 = boundedline(time, corr_AMYtoHPC_mean, corr_AMYtoHPC_sem, 'cmap', AMY_HPC_color,'alpha'); hold on
b1.LineWidth = 2;
b2 = boundedline(time, corr_HPCtoAMY_mean, corr_HPCtoAMY_sem, '--', 'cmap', AMY_HPC_color,'alpha'); 
b2.LineWidth = 2;
plot([0 0], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([1 1], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([1.5 1.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([2.5 2.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([3.5 3.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
xlim([-0.5 3.5])
ylim([-0.4 0.7])
set(gca, 'xtick', [-0.5 0 1 1.5 2.5 3.5],'ytick', [-0.4 0 0.4 0.7], 'fontSize', 30, ...
         'fontWeight', 'bold', 'LineWidth', 2, 'box', 'on');
     
% OFC - HPC, corr
figure('rend','painters','pos',[10 10 800 250]);
b1 = boundedline(time, corr_OFCtoHPC_mean, corr_OFCtoHPC_sem, 'cmap', HPC_OFC_color,'alpha'); hold on
b1.LineWidth = 2;
b2 = boundedline(time, corr_HPCtoOFC_mean, corr_HPCtoOFC_sem, '--', 'cmap', HPC_OFC_color,'alpha'); 
b2.LineWidth = 2;
plot([0 0], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([1 1], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([1.5 1.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([2.5 2.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([3.5 3.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
xlim([-0.5 3.5])
ylim([-0.4 0.7])
set(gca, 'xtick', [-0.5 0 1 1.5 2.5 3.5],'ytick', [-0.4 0 0.4 0.7], 'fontSize', 30, ...
         'fontWeight', 'bold', 'LineWidth', 2, 'box', 'on');    
     
% AMY - OFC, corr
figure('rend','painters','pos',[10 10 800 250]);
b1 = boundedline(time, corr_AMYtoOFC_mean, corr_AMYtoOFC_sem, 'cmap', AMY_OFC_color,'alpha'); hold on
b1.LineWidth = 2;
b2 = boundedline(time, corr_OFCtoAMY_mean, corr_OFCtoAMY_sem, '--', 'cmap', AMY_OFC_color,'alpha'); 
b2.LineWidth = 2;
plot([0 0], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([1 1], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([1.5 1.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([2.5 2.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
plot([3.5 3.5], [-4 4], '-.', 'LineWidth', 3,'color', [0.5 0.5 0.5]);
xlim([-0.5 3.5])
ylim([-0.4 0.7])
set(gca, 'xtick', [-0.5 0 1 1.5 2.5 3.5],'ytick', [-0.4 0 0.4 0.7], 'fontSize', 30, ...
         'fontWeight', 'bold', 'LineWidth', 2, 'box', 'on');
     
%% PAC vs contextual modulation strength

% HPCtoOFC, Maintenance period
load('corr_delay.mat');
figure('rend','painters','pos',[10 10 400 350]);
scatter(mod_sim,PAC_strength_HPCtoOFC, 15, [0 128 255]./255, 'filled');
hold on
l = lsline;
l.LineWidth = 2;
xlim([-0.5 1.5])
ylim([-3 5])
box on
set(gca, 'LineWidth', 2, 'FontSize', 20, 'FontWeight','bold' )

% OFCtoAMY, Face period
load('corr_face.mat');
figure('rend','painters','pos',[10 10 400 350]);
scatter(mod_sim,PAC_strength_OFCtoAMY,15, [66 128 0]./255, 'filled');
hold on
l = lsline;
l.LineWidth = 2;
xlim([-0.5 1.5])
ylim([-3 5])
box on
set(gca, 'LineWidth', 2, 'FontSize', 20, 'FontWeight','bold' )







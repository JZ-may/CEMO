%% Phase shift, examples
load('phaseShift_HPCtoOFC_strong.mat');
xticks = [-0.5 0 1 1.5 2.5 3.5];
figure('rend','painters','pos',[10 10 700 180]);
scatter(time, phase, 15, [0 128 255]./255,'filled'); hold on
for n = 1:length(xticks)
    plot([xticks(n) xticks(n)], [0 2*pi], '-.', 'Color', [128 128 128]./255, 'LineWidth',2);
end
ylim([0 2*pi]);
xlim([-0.5 3.5])
set(gca, 'XTick', xticks, 'YTick',[0 pi/2 pi 3*pi/2 2*pi], 'YTickLabel', rad2deg([0 pi/2 pi 3*pi/2 2*pi]), ....
         'FontSize', 20, 'FontWeight', 'bold', 'box', 'on', 'LineWidth', 2)
     
load('phaseShift_OFCtoAMY_strong.mat');
xticks = [-0.5 0 1 1.5 2.5 3.5];
figure('rend','painters','pos',[10 10 700 180]);
scatter(time, phase, 15, [66 128 0]./255,'filled'); hold on
for n = 1:length(xticks)
    plot([xticks(n) xticks(n)], [0 2*pi], '-.', 'Color', [128 128 128]./255, 'LineWidth',2);
end
ylim([0 2*pi]);
xlim([-0.5 3.5])
set(gca, 'XTick', xticks, 'YTick',[0 pi/2 pi 3*pi/2 2*pi], 'YTickLabel', rad2deg([0 pi/2 pi 3*pi/2 2*pi]), ....
         'FontSize', 20, 'FontWeight', 'bold', 'box', 'on', 'LineWidth', 2)
     
load('phaseShift_HPCtoOFC_weak.mat');     
figure('rend','painters','pos',[10 10 700 180]);
scatter(time, phase, 15, [0 128 255]./255,'filled'); hold on
for n = 1:length(xticks)
    plot([xticks(n) xticks(n)], [0 2*pi], '-.', 'Color', [128 128 128]./255, 'LineWidth',2);
end
ylim([0 2*pi]);
xlim([-0.5 3.5])
set(gca, 'XTick', xticks, 'YTick',[0 pi/2 pi 3*pi/2 2*pi], 'YTickLabel', rad2deg([0 pi/2 pi 3*pi/2 2*pi]), ....
         'FontSize', 20, 'FontWeight', 'bold', 'box', 'on', 'LineWidth', 2)

load('phaseShift_OFCtoAMY_weak.mat');
xticks = [-0.5 0 1 1.5 2.5 3.5];
figure('rend','painters','pos',[10 10 700 180]);
scatter(time, phase, 15, [66 128 0]./255,'filled'); hold on
for n = 1:length(xticks)
    plot([xticks(n) xticks(n)], [0 2*pi], '-.', 'Color', [128 128 128]./255, 'LineWidth',2);
end
ylim([0 2*pi]);
xlim([-0.5 3.5])
set(gca, 'XTick', xticks, 'YTick',[0 pi/2 pi 3*pi/2 2*pi], 'YTickLabel', rad2deg([0 pi/2 pi 3*pi/2 2*pi]), ....
         'FontSize', 20, 'FontWeight', 'bold', 'box', 'on', 'LineWidth', 2)

%% phase distribution
load('phaseShift_distribution_HPCtoOFC_strong.mat');
c_delay = [0 102 205]./255;
c_face = [128 192 255]./255;
mean_delay = mean(phase_delay);
mean_face = mean(phase_face);
binSize = 30;
figure('rend','painters','pos',[10 10 400 200]);
histogram(phase_delay, binSize,'DisplayStyle','stairs', 'LineWidth', 2, 'EdgeColor', c_delay); hold on 
histogram(phase_delay, binSize, 'FaceColor', c_delay, 'FaceAlpha', 0.2, ...
            'EdgeColor', c_delay, 'EdgeAlpha', 0.1);
histogram(phase_face, binSize, 'FaceColor', 'none', 'FaceAlpha', 0.5, ...
            'DisplayStyle','stairs', 'EdgeColor', c_face, 'LineWidth', 2); 
stem(mean_delay, 70, 'filled', 'MarkerFaceColor', c_delay,'color',c_delay, 'LineWidth', 1.5);
stem(mean_face, 70, 'filled', 'MarkerFaceColor', c_face,'color',c_face, 'LineWidth', 1.5);
set(gca, 'XTick', [0 pi/2 pi 3*pi/2 2*pi], 'XTickLabel', rad2deg([0 pi/2 pi 3*pi/2 2*pi]), ...
        'FontSize', 15, 'FontWeight', 'bold', 'LineWidth', 2)
xlim([0 2*pi])
ylim([0 80])

load('phaseShift_distribution_OFCtoAMY_strong.mat');
c_face = [194 255 128]./255;
c_delay = [66 128 0]./255;
mean_delay = mean(phase_delay);
mean_face = mean(phase_face);
binSize = 30;
figure('rend','painters','pos',[10 10 400 200]);
histogram(phase_delay, binSize,'DisplayStyle','stairs', 'LineWidth', 2, 'EdgeColor', c_delay); hold on 
histogram(phase_delay, binSize, 'FaceColor', c_delay, 'FaceAlpha', 0.2, ...
            'EdgeColor', c_delay, 'EdgeAlpha', 0.1);
histogram(phase_face, binSize, 'FaceColor', 'none', 'FaceAlpha', 0.5, ...
            'DisplayStyle','stairs', 'EdgeColor', c_face, 'LineWidth', 2); 
stem(mean_delay, 70, 'filled', 'MarkerFaceColor', c_delay,'color',c_delay, 'LineWidth', 1.5);
stem(mean_face, 70, 'filled', 'MarkerFaceColor', c_face,'color',c_face, 'LineWidth', 1.5);
set(gca, 'XTick', [0 pi/2 pi 3*pi/2 2*pi], 'XTickLabel', rad2deg([0 pi/2 pi 3*pi/2 2*pi]), ...
        'FontSize', 15, 'FontWeight', 'bold', 'LineWidth', 2)
xlim([0 2*pi])
ylim([0 80])

load('phaseShift_distribution_HPCtoOFC_weak.mat');
c_delay = [0 102 205]./255;
c_face = [128 192 255]./255;
mean_delay = mean(phase_delay);
mean_face = mean(phase_face);
binSize = 30;
figure('rend','painters','pos',[10 10 400 200]);
histogram(phase_delay, binSize,'DisplayStyle','stairs', 'LineWidth', 2, 'EdgeColor', c_delay); hold on 
histogram(phase_delay, binSize, 'FaceColor', c_delay, 'FaceAlpha', 0.2, ...
            'EdgeColor', c_delay, 'EdgeAlpha', 0.1);
histogram(phase_face, binSize, 'FaceColor', 'none', 'FaceAlpha', 0.5, ...
            'DisplayStyle','stairs', 'EdgeColor', c_face, 'LineWidth', 2); 
stem(mean_delay, 70, 'filled', 'MarkerFaceColor', c_delay,'color',c_delay, 'LineWidth', 1.5);
stem(mean_face, 70, 'filled', 'MarkerFaceColor', c_face,'color',c_face, 'LineWidth', 1.5);
set(gca, 'XTick', [0 pi/2 pi 3*pi/2 2*pi], 'XTickLabel', rad2deg([0 pi/2 pi 3*pi/2 2*pi]), ...
        'FontSize', 15, 'FontWeight', 'bold', 'LineWidth', 2)
xlim([0 2*pi])
ylim([0 80]) 

load('phaseShift_distribution_OFCtoAMY_weak.mat');
c_face = [194 255 128]./255;
c_delay = [66 128 0]./255;
mean_delay = mean(phase_delay);
mean_face = mean(phase_face);
binSize = 30;
figure('rend','painters','pos',[10 10 400 200]);
histogram(phase_delay, binSize,'DisplayStyle','stairs', 'LineWidth', 2, 'EdgeColor', c_delay); hold on 
histogram(phase_delay, binSize, 'FaceColor', c_delay, 'FaceAlpha', 0.2, ...
            'EdgeColor', c_delay, 'EdgeAlpha', 0.1);
histogram(phase_face, binSize, 'FaceColor', 'none', 'FaceAlpha', 0.5, ...
            'DisplayStyle','stairs', 'EdgeColor', c_face, 'LineWidth', 2); 
stem(mean_delay, 70, 'filled', 'MarkerFaceColor', c_delay,'color',c_delay, 'LineWidth', 1.5);
stem(mean_face, 70, 'filled', 'MarkerFaceColor', c_face,'color',c_face, 'LineWidth', 1.5);
set(gca, 'XTick', [0 pi/2 pi 3*pi/2 2*pi], 'XTickLabel', rad2deg([0 pi/2 pi 3*pi/2 2*pi]), ...
        'FontSize', 15, 'FontWeight', 'bold', 'LineWidth', 2)
xlim([0 2*pi])
ylim([0 80])




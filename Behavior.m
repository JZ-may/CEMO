%% Figure 1b, correlation between context valence and face rating
load('corr_FacevsContext.mat');
scatter(corr_FacevsContext(:,1),corr_FacevsContext(:,2),'o');
hold on
lsline;
[r_valence, p_valence] = corrcoef(corr_FacevsContext(:,1), corr_FacevsContext(:,2));
text(0.2, 0.6, ['R square = ', num2str(r_valence(1,2))]);
text(0.2, 0.5,['P value = ', num2str(p_valence(1,2))]);
xlim([-0.1 1.1]);
ylim([-0.1 1.1]);
box on

%% Figure 1c, distribution of contextual modualtion strength
load modHist.mat
neg_col = [255 61 0]./255; % red tone
pos_col = [0 128 225]./255; % blue tone
figure('rend','painters','pos',[10 10 1500 600])
patch(neg_centers_interp, neg_counts_interp, neg_col,...
      'FaceAlpha',0.5,'EdgeColor','white','EdgeAlpha',0.6,'LineWidth',1);
hold on
patch(pos_centers_interp, pos_counts_interp, pos_col,...
      'FaceAlpha',0.5,'EdgeColor','white','EdgeAlpha',0.6,'LineWidth',1);
xlim([-0.5 1.5])
ylim([0 80])
set(gca,'XTick',[-1.5 -1 -0.5 0 0.5 1 1.5],'YTick',[0 20 40 60 80],...
        'LineWidth',3,'FontSize',25,'FontWeight','bold','box','on')
plot([0,0],[0 80],'-.k','LineWidth',3)

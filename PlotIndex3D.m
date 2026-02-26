figure();
scatter3(lmTable.W2Hbo,lmTable.DeltaPerfW2, lmTable.W2HboScaled,markerSize,lmTable.W2HboScaled,'LineWidth',3)
ylabel('\DeltaPerfW2')
xlabel('Hbo W2')
zlabel('Index W2')

%%
saveDir = '/Users/mac/Library/CloudStorage/OneDrive-UniversityofPittsburgh/SML/Projects/fNIR_Project/Code_NIRS_Automaticity/Data/IndexAppliedResults/012723Data/PostPubAnalysis/NMCM_PRIMA_Move MYHATExp/';
close all; clc
f = figure('units','normalized','outerposition',[0 0 1 1]);
markerSize = 120;
subplot(1,2,1);
scatter(lmTable.W2Hbo,lmTable.DeltaPerfW2, markerSize,lmTable.W2HboScaled,'LineWidth',3) %3rd arg is point size
ylabel('\DeltaPerfW2')
xlabel('Hbo W2')
title('Walk2')
grid on;

subplot(1,2,2);
scatter(lmTable.W2UHbo,lmTable.DeltaPerfW2U, markerSize,lmTable.W2UHboScaled,'LineWidth',3) %3rd arg is point size
colorbar();
ylabel('\DeltaPerfW2U')
xlabel('Hbo W2U')
title('Walk2 Uneven')
cb = colorbar();
cb.Label.String = "Attentional Gait Index";
set(findall(gcf,'-property','FontSize'),'FontSize',25)
grid on;
colormap(jet)

set(gcf,'renderer','painters')
saveas(f,[saveDir, 'IndexVsPerfVsPFC3D'])
saveas(f,[saveDir, 'IndexVsPerfVsPFC3D.png'])

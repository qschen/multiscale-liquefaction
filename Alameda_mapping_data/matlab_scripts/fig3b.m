%%
% This file is subjected to the terms and conditions defined in "LICENSE.txt"
% The figure number corresponds to the number in the technical report 
% "FinalReport_G17AP00044_ChenJuang.pdf" located in the "Publications" folder
% Journal paper: 
% Wang and Chen (2018), Geotechnique, 68(7): 614-625
% https://doi.org/10.1680/jgeot.17.P.074
% Copyright (c) [2018] [Qiushi Chen, Chaofeng Wang]
%%

load('../fig3.XY.mat');
figure('Position', [10, 10, 800, 600]);
hold on
plot(XY(:,1),XY(:,2),'ro')
xt = 0:100:12000;
yt = 1*(1-exp(-xt./470.0604));
plot(xt,yt,'k-','LineWidth',2)
xlim([0 6000])
ylim([0 3])
box on
grid off
xlabel('Distance, m', 'Fontsize', 20,'Fontname','Timesnewroman')
ylabel('Semivariogram, \gamma', 'Fontsize', 20,'Fontname','Timesnewroman')
legend('Empirical \gamma (LPI at CPT soundings)', 'Fitted \gamma')
set(gca,'FontSize',20,'linewidth',1.5)

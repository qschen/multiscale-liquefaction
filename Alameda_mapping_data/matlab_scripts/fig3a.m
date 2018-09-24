%%
% This file is subjected to the terms and conditions defined in "LICENSE.txt"
% The figure number corresponds to the number in the technical report 
% "FinalReport_G17AP00044_ChenJuang.pdf" located in the "Publications" folder
% Journal paper: 
% Wang and Chen (2018), Geotechnique, 68(7): 614-625
% https://doi.org/10.1680/jgeot.17.P.074
% Copyright (c) [2018] [Qiushi Chen, Chaofeng Wang]
%%

load('../fig3a.data.mat');
figure('Position', [10, 10, 800, 600])
hold on
h=histogram(values,'BinWidth',2,'Normalization','pdf')
set(gca,'fontsize',17)
xlabel('LPI', 'Fontsize', 20,'Fontname','Timesnewroman')
ylabel('PDF', 'Fontsize', 20,'Fontname','Timesnewroman')
box on
grid off
set(h(1),'facecolor','white')
pd = fitdist(values,'exponential')
fprintf('fitted exponential with mean = %f \n',pd.mu)
xlim([0 50]);
set(gca,'FontSize',20,'linewidth',1.5)

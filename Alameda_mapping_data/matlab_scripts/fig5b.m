%%
% This file is subjected to the terms and conditions defined in "LICENSE.txt"
% The figure number corresponds to the number in the technical report 
% "FinalReport_G17AP00044_ChenJuang.pdf" located in the "Publications" folder
% Journal paper: 
% Wang and Chen (2018), Geotechnique, 68(7): 614-625
% https://doi.org/10.1680/jgeot.17.P.074
% Copyright (c) [2018] [Qiushi Chen, Chaofeng Wang]
%%

load('../fig5b.mat')

figure('Position', [10, 10, 800, 600]);
plot(ogives.valuesA,ogives.ogiveA.*100,'k-.','LineWidth',2)
hold on
plot(ogives.valuesB,ogives.ogiveB.*100,'m--','LineWidth',2)
plot(ogives.valuesC,ogives.ogiveC.*100,'g-.','LineWidth',2)
plot(ogives.valuesD,ogives.ogiveD.*100,'c-')
plot(ogives.valuesF,ogives.ogiveF.*100,'r-','LineWidth',2,'MarkerSize',20)


set(gca,'fontsize',20)
xlabel('LPI', 'Fontsize', 20,'Fontname','Timesnewroman');
ylabel('Cumulative Frequency, %', 'Fontsize', 20,'Fontname','Timesnewroman');
legend(['Artificial Fill (85)'],['Pleistocene Fan (9)'] ...
    ,['Holocene Fan (94)'],['Merritt Sand (22)']...
    ,['All (210)'])

box on
xlim([0 40])
ylim([0 100])
set(gca,'FontSize',20,'linewidth',1.5)

%%
% This file is subjected to the terms and conditions defined in "LICENSE.txt"
% The figure number corresponds to the number in the technical report 
% "FinalReport_G17AP00044_ChenJuang.pdf" located in the "Publications" folder
% Journal paper: 
% Wang and Chen (2018), Geotechnique, 68(7): 614-625
% https://doi.org/10.1680/jgeot.17.P.074
% Copyright (c) [2018] [Qiushi Chen, Chaofeng Wang]
%%

load('../fig9f.mat')

figure('Position', [10, 10, 800, 600]);
hold on
h1 = plot(x1,y1*100, 'k-.','linewidth',1.5)
h2 = plot(x2,y2*100, 'm--','linewidth',1.5)
h3 = plot(x3,y3*100, 'g-.','linewidth',1.5)
h4 = plot(x4,y4*100, 'c-','linewidth',1.5)


set(gca,'fontsize',20)
xlabel('LPI', 'Fontsize', 20,'Fontname','Timesnewroman');
ylabel('Cumulative Frequency, %', 'Fontsize', 20,'Fontname','Timesnewroman');
legend(['Artificial Fill'],['Pleistocene Fan'] ...
    ,['Holocene Fan'],['Merritt Sand'])

box on
xlim([0 40])
ylim([0 100])
set(gca,'FontSize',20,'linewidth',1.5)

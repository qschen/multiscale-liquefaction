%%
% This file is subjected to the terms and conditions defined in "LICENSE.txt"
% The figure number corresponds to the number in the technical report 
% "FinalReport_G17AP00044_ChenJuang.pdf" located in the "Publications" folder
% Journal paper: 
% Wang and Chen (2018), Geotechnique, 68(7): 614-625
% https://doi.org/10.1680/jgeot.17.P.074
% Copyright (c) [2018] [Qiushi Chen, Chaofeng Wang]
%%

load('../fig5a.mat');

valuesA = fig5a.valuesA;
valuesB = fig5a.valuesB;
valuesC = fig5a.valuesC;
valuesD = fig5a.valuesD;
valuesF = fig5a.valuesF;

group = [ones(size(valuesF));
         2 * ones(size(valuesA));
         3 * ones(size(valuesD));
         4 * ones(size(valuesB));
         5 * ones(size(valuesC))];
figure
boxplot([valuesF;valuesA;valuesD;valuesB;valuesC],group,'Orientation','horizontal','Colors','rkcmg')
set(gca,'YTickLabel',{'All','Artificial fill','Merritt sand','Pleistocene','Holocene'},'fontsize',17)
set(gca,'fontsize',17)
xlabel('LPI', 'Fontsize', 17);

%%
% This file is subjected to the terms and conditions defined in "LICENSE.txt"
% The figure number corresponds to the number in the technical report 
% "FinalReport_G17AP00044_ChenJuang.pdf" located in the "Publications" folder
% Journal paper: 
% Wang and Chen (2018), Geotechnique, 68(7): 614-625
% https://doi.org/10.1680/jgeot.17.P.074
% Copyright (c) [2018] [Qiushi Chen, Chaofeng Wang]
%%

% Figure 4(a)
load('../fig4.1.mat');

values(values==0)= min(values(values>0));
figure('Position', [10, 10, 800, 650]);
hold on
h=histogram(values,'BinWidth',2.29,'Normalization','pdf')
set(h,'facecolor','white')
set(gca,'fontsize',20)

mu_cu=sum(values)/length(values(:,1));
sig_cu=sqrt(sum((values-mu_cu).^2)./(length(values(:,1))-1));
sig_lncu = sqrt(log(1+(sig_cu/mu_cu)^2));
mu_lncu  = log(mu_cu) - 0.5*sig_lncu^2;

X = [0:0.1:50];
Y = lognpdf(X,mu_lncu,sig_lncu);
plot(X,Y,'k','LineWidth',2)

xlabel('LPI', 'Fontsize', 20,'Fontname','Timesnewroman');
ylabel('PDF', 'Fontsize', 20,'Fontname','Timesnewroman');
legend('Histogram', 'Fitted distribution')
box on
grid off
xlim([0 50])
ylim([0 0.07])


% Figure 4(b)
load('../fig4.2.mat');

values(values==0)= min(values(values>0));
figure('Position', [10, 10, 800, 650]);
hold on
h=histogram(values,'BinWidth',1.39,'Normalization','pdf')
set(h,'facecolor','white')
set(gca,'fontsize',20)

xlabel('LPI', 'Fontsize', 20,'Fontname','Timesnewroman');
ylabel('PDF', 'Fontsize', 20,'Fontname','Timesnewroman');
legend('Histogram')
box on
grid off
xlim([0 50])
ylim([0 0.16])

% Figure 4(c)
load('../fig4.3.mat');

values(values==0)= min(values(values>0));
figure('Position', [10, 10, 800, 650]);
hold on
h=histogram(values,'BinWidth',2.7,'Normalization','pdf')
set(h,'facecolor','white')
set(gca,'fontsize',20)

mu_cu=sum(values)/length(values(:,1));
sig_cu=sqrt(sum((values-mu_cu).^2)./(length(values(:,1))-1));
sig_lncu = sqrt(log(1+(sig_cu/mu_cu)^2));
mu_lncu  = log(mu_cu) - 0.5*sig_lncu^2;

X = [0:0.1:50];
Y = lognpdf(X,mu_lncu,sig_lncu);
plot(X,Y,'k','LineWidth',2)

xlabel('LPI', 'Fontsize', 20,'Fontname','Timesnewroman');
ylabel('PDF', 'Fontsize', 20,'Fontname','Timesnewroman');
legend('Histogram', 'Fitted distribution')
box on
grid off
xlim([0 50])
ylim([0 0.1])

% Figure 4(d)
load('../fig4.4.mat');

values(values==0)= min(values(values>0));
figure('Position', [10, 10, 800, 650]);
hold on
h=histogram(values,'BinWidth',2.25,'Normalization','pdf')
set(h,'facecolor','white')
set(gca,'fontsize',20)

mu_cu=sum(values)/length(values(:,1));
sig_cu=sqrt(sum((values-mu_cu).^2)./(length(values(:,1))-1));
sig_lncu = sqrt(log(1+(sig_cu/mu_cu)^2));
mu_lncu  = log(mu_cu) - 0.5*sig_lncu^2;

X = [0:0.1:50];
Y = lognpdf(X,mu_lncu,sig_lncu);
plot(X,Y,'k','LineWidth',2)

xlabel('LPI', 'Fontsize', 20,'Fontname','Timesnewroman');
ylabel('PDF', 'Fontsize', 20,'Fontname','Timesnewroman');
legend('Histogram', 'Fitted distribution')
box on
grid off
xlim([0 50])

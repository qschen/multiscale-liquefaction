%%
% This file is subjected to the terms and conditions defined in "LICENSE.txt"
% The figure number corresponds to the number in the technical report 
% "FinalReport_G17AP00044_ChenJuang.pdf" located in the "Publications" folder
% Journal paper: 
% Wang and Chen (2018), Geotechnique, 68(7): 614-625
% https://doi.org/10.1680/jgeot.17.P.074
% Copyright (c) [2018] [Qiushi Chen, Chaofeng Wang]
%%

addpath('./utils')

name_nodes=fullfile('data','nodes.txt');
name1=fullfile('..','fig8a','scale01.mat');
name2=fullfile('..','fig8a','scale02.mat');
name3=fullfile('..','fig8a','BIG.mat');
name4=fullfile('..','fig8a','scale01V.mat');
name5=fullfile('..','fig8a','scale02V.big.mat');
name6=fullfile('..','fig8a','BIGV.mat');

if exist(name_nodes)==2
    plot_nodes=load(name_nodes);
    plot_nodes=[plot_nodes(:,2:3),zeros(length(plot_nodes(:,2)),1)];
end

load(name1)
load(name2)
load(name3)
load(name4)
load(name5)
load(name6)

s1=shaperead('data/Shapefiles/ArtificialFill.shp');
s2=shaperead('data/Shapefiles/Pleistocene.shp');
s3=shaperead('data/Shapefiles/Holocene.shp');
s4=shaperead('data/Shapefiles/Merritt.shp');
s5=shaperead('data/Shapefiles/Bedrock.shp');

A_line = [s1.X',s1.Y'];
B_line = [s2.X',s2.Y'];
C_line = [s3.X',s3.Y'];
D_line = [s4.X',s4.Y'];
E_line = [s5.X',s5.Y'];

V2=[scale01(:,6:8);BIG(:,6:8)];

i1 = inpolygon(V2(:,1),V2(:,2),A_line(:,1),A_line(:,2));
i2 = inpolygon(V2(:,1),V2(:,2),B_line(:,1),B_line(:,2));
i3 = inpolygon(V2(:,1),V2(:,2),C_line(:,1),C_line(:,2));
i4 = inpolygon(V2(:,1),V2(:,2),D_line(:,1),D_line(:,2));
i5 = inpolygon(V2(:,1),V2(:,2),E_line(:,1),E_line(:,2));

school = [37.818128, -122.279131];
[utmx, utmy, zone] =deg2utm(school(1),school(2));
d = [utmx-0.0002e6 - scale02(:,6), utmy+0.0002e6 - scale02(:,7)];
d = sqrt(sum(d.^2,2));
A = find(d==min(d));

[mu,range] = mle(scale02V(A,:),'distribution','exponential')

n = [scale01(:,2:5);scale02(:,2:5);BIG(:,2:5)];
n = n(:);

figure8 = figure('Position', [50, 10, 800, 600]);
set(figure8,'Name','Multi-scale LogNormal Distribution')
hold on
p=patch('Vertices',plot_nodes,'Faces',[scale01(:,2:5)]);
set(p,'facecolor','yellow','edgecolor','black');
clear cdata
set(p,'FaceColor','flat','FaceVertexCData',[scale01(:,8)],'CDataMapping','scaled','EdgeAlpha',0,'LineWidth',0.001)
colormap parula
% colorbar
axis equal
set(gca,'xtick',[],'ytick',[]) % remove tick


p=patch('Vertices',plot_nodes,'Faces',[scale02(:,2:5)]);
set(p,'facecolor','yellow','edgecolor','black');
clear cdata
set(p,'FaceColor','flat','FaceVertexCData',[scale02(:,8)],'CDataMapping','scaled','EdgeAlpha',0,'LineWidth',0.001)
colormap parula
cb = colorbar;
set(cb,'fontsize',17)
caxis([0 30])

axis equal

box on
xlim([min(plot_nodes(n,1)),max(plot_nodes(n,1))])
ylim([min(plot_nodes(n,2)),max(plot_nodes(n,2))])


school = [37.818128, -122.279131];
[utmx, utmy, zone] =deg2utm(school(1),school(2));
hold on

hold on
plot(s1.X,s1.Y,'r-')

% plot(s3.X,s3.Y+100,'c-')
x3 = s3.X;
y3 = s3.Y;
plot(x3([1:293 803:1020]),y3([1:293 803:1020])+100,'c-')
plot(x3([294:802]),y3([294:802])+100,'c-')
plot(s5.X+100,s5.Y,'y-')

% plot(s2.X,s2.Y,'k-')
x2 = s2.X;
y2 = s2.Y;
plot(x2([1:84 656:753]),y2([1:84 656:753]),'k-')
plot(x2([85:655]),y2([85:655]),'k-')

% plot(s4.X,s4.Y,'b-')
x4 = s4.X;
y4 = s4.Y;
plot(x4(1:76),y4(1:76),'b-')
plot(x4([77:123 164:207]),y4([77:123 164:207]),'b-')
plot(x4([124:162]),y4([124:162]),'b-')

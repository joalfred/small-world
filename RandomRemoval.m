%% graph functions 
h1 = WattsStrogatz(1000,25,0.10);
plot(h1,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.1$', ... 
    'Interpreter','latex')

h2 = WattsStrogatz(1000,25,0.20);
plot(h2,'NodeColor','k','EdgeAlpha',0.2);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.2$', ...
    'Interpreter','latex')

h3 = WattsStrogatz(1000,25,0.40);
plot(h3,'NodeColor','k','EdgeAlpha',0.40);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.4$', ...
    'Interpreter','latex')

h4 = WattsStrogatz(1000,25,0.60);
plot(h4,'NodeColor','k','EdgeAlpha',0.60);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.6$', ...
    'Interpreter','latex')

histogram(degree(h1), 'BinMethod' , 'integers' , 'FaceAlpha' ,0.9);
hold on 
histogram(degree(h2), 'BinMethod' , 'integers' , 'FaceAlpha' ,0.9);
histogram(degree(h3), 'BinMethod' , 'integers' , 'FaceAlpha' ,0.8);
histogram(degree(h4), 'BinMethod' , 'integers' , 'FaceAlpha' ,0.8);
hold off 
title( 'Node degree distributions for Watts-Strogatz Model Graphs' )
xlabel( 'Degree of node' )
ylabel( 'Number of nodes' )
legend( '\beta = 0.1' , '\beta = 0.2' , '\beta = 0.4' , '\beta = 0.6' , 'Location' , 'NorthWest' )

colormap hsv
deg = degree(h1);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h1,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.1$', ...
    'Interpreter','latex')
colorbar

n = 50; %determine the hubs by setting the nodes(n) to be 55 or higher
d = [mean(mean(distances(h1))), nnz(degree(h1)>=n); ...
     mean(mean(distances(h2))), nnz(degree(h2)>=n); ...
     mean(mean(distances(h3))), nnz(degree(h3)>=n);
     mean(mean(distances(h4))), nnz(degree(h4)>=n)];
T = table([0.10 0.20 0.40 0.60]', d(:,1), d(:,2),...
    'VariableNames',{'Beta','AvgPathLength','NumberOfHubs'})



%% random removal of nodes, for example 100 nodes removal of h11 (10 nodes
%  at a time),remove nodes without changing the numbering of nodes
%  start from h21

%% 1. increase rewiring probability only

h4 = WattsStrogatz(1000,25,0.60);
plot(h4,'NodeColor','k','EdgeAlpha',0.60);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.60$', ...
    'Interpreter','latex')


y1=randsample(numnodes(h4),10)
h21=rmnode(h4,y1)

y2=randsample(numnodes(h21),10)
h22=rmnode(h21,y2)

y3=randsample(numnodes(h22),10)
h23=rmnode(h22,y3)

y4=randsample(numnodes(h23),10)
h24=rmnode(h23,y4)

y5=randsample(numnodes(h24),10)
h25=rmnode(h24,y5)

y6=randsample(numnodes(h25),10)
h26=rmnode(h25,y6)

y7=randsample(numnodes(h26),10)
h27=rmnode(h26,y7)

y8=randsample(numnodes(h27),10)
h28=rmnode(h27,y8)

y9=randsample(numnodes(h28),10)
h29=rmnode(h28,y9)

y10=randsample(numnodes(h29),10)
h30=rmnode(h29,y10)

y11=randsample(numnodes(h30),10)
h31=rmnode(h30,y11)

y12=randsample(numnodes(h31),10)
h32=rmnode(h31,y12)

y13=randsample(numnodes(h32),10)
h33=rmnode(h32,y13)

y14=randsample(numnodes(h33),10)
h34=rmnode(h33,y14)

y15=randsample(numnodes(h34),10)
h35=rmnode(h34,y15)

y16=randsample(numnodes(h35),10)
h36=rmnode(h35,y16)

y17=randsample(numnodes(h36),10)
h37=rmnode(h36,y17)

y18=randsample(numnodes(h37),10)
h38=rmnode(h37,y18)

y19=randsample(numnodes(h38),10)
h39=rmnode(h38,y19)

y20=randsample(numnodes(h39),10)
h40=rmnode(h39,y20)


plot(h40,'NodeColor','k','EdgeAlpha',0.60);
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 25$, and $\beta = 0.6$', ...
    'Interpreter','latex')


colormap hsv
deg = degree(h40);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h40,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.60)
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 25$, and $\beta = 0.60$', ...
    'Interpreter','latex')
colorbar


%% 2. increase K or neighbouring parameters only, here choose rewiring prob
%  as 0.1



h6 = WattsStrogatz(1000,25,0.10)
plot(h6,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.1$', ...
    'Interpreter','latex')

h7 = WattsStrogatz(1000,30,0.10)
plot(h7,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 30$, and $\beta = 0.1$', ...
    'Interpreter','latex')

h8 = WattsStrogatz(1000,40,0.10)
plot(h8,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 40$, and $\beta = 0.1$', ...
    'Interpreter','latex')

h9 = WattsStrogatz(1000,50,0.10)
plot(h9,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.1$', ...
    'Interpreter','latex')

%simulation start here changing the K

h6 = WattsStrogatz(1000,25,0.10)
plot(h6,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.1$', ...
    'Interpreter','latex')

colormap hsv
deg = degree(h9);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h9,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.1$', ...
    'Interpreter','latex')
colorbar


y1=randsample(numnodes(h6),10)
h21=rmnode(h6,y1)

y2=randsample(numnodes(h21),10)
h22=rmnode(h21,y2)

y3=randsample(numnodes(h22),10)
h23=rmnode(h22,y3)

y4=randsample(numnodes(h23),10)
h24=rmnode(h23,y4)

y5=randsample(numnodes(h24),10)
h25=rmnode(h24,y5)

y6=randsample(numnodes(h25),10)
h26=rmnode(h25,y6)

y7=randsample(numnodes(h26),10)
h27=rmnode(h26,y7)

y8=randsample(numnodes(h27),10)
h28=rmnode(h27,y8)

y9=randsample(numnodes(h28),10)
h29=rmnode(h28,y9)

y10=randsample(numnodes(h29),10)
h30=rmnode(h29,y10)

y11=randsample(numnodes(h30),10)
h31=rmnode(h30,y11)

y12=randsample(numnodes(h31),10)
h32=rmnode(h31,y12)

y13=randsample(numnodes(h32),10)
h33=rmnode(h32,y13)

y14=randsample(numnodes(h33),10)
h34=rmnode(h33,y14)

y15=randsample(numnodes(h34),10)
h35=rmnode(h34,y15)

y16=randsample(numnodes(h35),10)
h36=rmnode(h35,y16)

y17=randsample(numnodes(h36),10)
h37=rmnode(h36,y17)

y18=randsample(numnodes(h37),10)
h38=rmnode(h37,y18)

y19=randsample(numnodes(h38),10)
h39=rmnode(h38,y19)

y20=randsample(numnodes(h39),10)
h40=rmnode(h39,y20)


plot(h40,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 50$, and $\beta = 0.1$', ...
    'Interpreter','latex')


colormap hsv
deg = degree(h40);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h40,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 50$, and $\beta = 0.10$', ...
    'Interpreter','latex')
colorbar

%% 3. simulataneously increase rewiring prob and K=50

h10 = WattsStrogatz(1000,50,0.10)
plot(h10,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.1$', ...
    'Interpreter','latex')

h11 = WattsStrogatz(1000,50,0.20);
plot(h11,'NodeColor','k','EdgeAlpha',0.2);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.2$', ...
    'Interpreter','latex')

h12 = WattsStrogatz(1000,50,0.40);
plot(h12,'NodeColor','k','EdgeAlpha',0.40);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.40$', ...
    'Interpreter','latex')

h13 = WattsStrogatz(1000,50,0.60);
plot(h13,'NodeColor','k','EdgeAlpha',0.60);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.60$', ...
    'Interpreter','latex')

colormap hsv
deg = degree(h10);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h10,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.1$', ...
    'Interpreter','latex')
colorbar

% simulation here
h12 = WattsStrogatz(1000,50,0.40);
plot(h12,'NodeColor','k','EdgeAlpha',0.40);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.40$', ...
    'Interpreter','latex')


colormap hsv
deg = degree(h12);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h12,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.40)
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.4$', ...
    'Interpreter','latex')
colorbar


y1=randsample(numnodes(h12),10)
h21=rmnode(h12,y1)

y2=randsample(numnodes(h21),10)
h22=rmnode(h21,y2)

y3=randsample(numnodes(h22),10)
h23=rmnode(h22,y3)

y4=randsample(numnodes(h23),10)
h24=rmnode(h23,y4)

y5=randsample(numnodes(h24),10)
h25=rmnode(h24,y5)

y6=randsample(numnodes(h25),10)
h26=rmnode(h25,y6)

y7=randsample(numnodes(h26),10)
h27=rmnode(h26,y7)

y8=randsample(numnodes(h27),10)
h28=rmnode(h27,y8)

y9=randsample(numnodes(h28),10)
h29=rmnode(h28,y9)

y10=randsample(numnodes(h29),10)
h30=rmnode(h29,y10)

y11=randsample(numnodes(h30),10)
h31=rmnode(h30,y11)

y12=randsample(numnodes(h31),10)
h32=rmnode(h31,y12)

y13=randsample(numnodes(h32),10)
h33=rmnode(h32,y13)

y14=randsample(numnodes(h33),10)
h34=rmnode(h33,y14)

y15=randsample(numnodes(h34),10)
h35=rmnode(h34,y15)

y16=randsample(numnodes(h35),10)
h36=rmnode(h35,y16)

y17=randsample(numnodes(h36),10)
h37=rmnode(h36,y17)

y18=randsample(numnodes(h37),10)
h38=rmnode(h37,y18)

y19=randsample(numnodes(h38),10)
h39=rmnode(h38,y19)

y20=randsample(numnodes(h39),10)
h40=rmnode(h39,y20)


plot(h40,'NodeColor','k','EdgeAlpha',0.40);
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 50$, and $\beta = 0.4$', ...
    'Interpreter','latex')


colormap hsv
deg = degree(h40);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h40,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.40)
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 50$, and $\beta = 0.40$', ...
    'Interpreter','latex')
colorbar




%% 1. network generations functions for increasing beta (0.1 to 0.9)
h1 = WattsStrogatz(1000,25,0.10);
plot(h1,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.1$', ... 
    'Interpreter','latex')

h2 = WattsStrogatz(1000,25,0.20);
plot(h2,'NodeColor','k','EdgeAlpha',0.2);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.2$', ...
    'Interpreter','latex')

h3 = WattsStrogatz(1000,25,0.30);
plot(h3,'NodeColor','k','EdgeAlpha',0.30);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.3$', ...
    'Interpreter','latex')

h4 = WattsStrogatz(1000,25,0.40);
plot(h4,'NodeColor','k','EdgeAlpha',0.40);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.4$', ...
    'Interpreter','latex')

h5 = WattsStrogatz(1000,25,0.50);
plot(h5,'NodeColor','k','EdgeAlpha',0.50);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.5$', ... 
    'Interpreter','latex')

h6 = WattsStrogatz(1000,25,0.60);
plot(h6,'NodeColor','k','EdgeAlpha',0.60);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.6$', ...
    'Interpreter','latex')

h7 = WattsStrogatz(1000,25,0.70);
plot(h7,'NodeColor','k','EdgeAlpha',0.70);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.7$', ...
    'Interpreter','latex')

h8 = WattsStrogatz(1000,25,0.80);
plot(h8,'NodeColor','k','EdgeAlpha',0.80);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.8$', ...
    'Interpreter','latex')

h9 = WattsStrogatz(1000,25,0.90);
plot(h9,'NodeColor','k','EdgeAlpha',0.90);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.9$', ...
    'Interpreter','latex')

% 200 Random Nodes Removals for all values of beta

%"numnodes" acts as a placeholder, hence after the removal, the numbering of
%nodes won't change
%"randsample" will generate random numbers of the nodes to be chosen and removed

y1=randsample(numnodes(h1),10) %change "h1" according to desired betas for simulations
h21=rmnode(h1,y1)

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

%plot the new subnetwork with 800 nodes after the random removals

plot(h40,'NodeColor','k','EdgeAlpha',0.10); %value of betas change according to the generated network
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 25$, and $\beta = 0.1$', ...
    'Interpreter','latex')

%plot the new subnetwork with 800 nodes after the random removals with
%colored degree distribution
colormap hsv
deg = degree(h40);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h40,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 25$, and $\beta = 0.10$', ...
    'Interpreter','latex')
colorbar

%% 2. network generations functions for increasing K (25 to 50), beta set as 0.1 for all K values

h1 = WattsStrogatz(1000,25,0.10);
plot(h1,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.1$', ... 
    'Interpreter','latex')

h2 = WattsStrogatz(1000,30,0.10);
plot(h2,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 30$, and $\beta = 0.1$', ... 
    'Interpreter','latex')

h3 = WattsStrogatz(1000,40,0.10);
plot(h3,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 40$, and $\beta = 0.1$', ... 
    'Interpreter','latex')

h4 = WattsStrogatz(1000,50,0.10);
plot(h4,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.1$', ... 
    'Interpreter','latex')

% 200 Random nodes removals for all values of K
y1=randsample(numnodes(h1),10) %change "h1" according to desired K for simulations
h21=rmnode(h1,y1)

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

%plot the new subnetwork with 800 nodes after the random removals

plot(h40,'NodeColor','k','EdgeAlpha',0.10); %value of K change according to the genrated network
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 25$, and $\beta = 0.1$', ...
    'Interpreter','latex')

%plot the new subnetwork with 800 nodes after the random removals with
%colored degree distribution
colormap hsv
deg = degree(h40);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h40,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 25$, and $\beta = 0.10$', ...
    'Interpreter','latex')
colorbar

%% 3. Network generations for increasing beta(0.1 to 0.9) and K increased as 50 


h1 = WattsStrogatz(1000,50,0.10);
plot(h1,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.1$', ... 
    'Interpreter','latex')

h2 = WattsStrogatz(1000,50,0.20);
plot(h2,'NodeColor','k','EdgeAlpha',0.2);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.2$', ...
    'Interpreter','latex')

h3 = WattsStrogatz(1000,50,0.30);
plot(h3,'NodeColor','k','EdgeAlpha',0.30);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.3$', ...
    'Interpreter','latex')

h4 = WattsStrogatz(1000,50,0.40);
plot(h4,'NodeColor','k','EdgeAlpha',0.40);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.4$', ...
    'Interpreter','latex')

h5 = WattsStrogatz(1000,50,0.50);
plot(h5,'NodeColor','k','EdgeAlpha',0.50);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.5$', ... 
    'Interpreter','latex')

h6 = WattsStrogatz(1000,50,0.60);
plot(h6,'NodeColor','k','EdgeAlpha',0.60);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.6$', ...
    'Interpreter','latex')

h7 = WattsStrogatz(1000,50,0.70);
plot(h7,'NodeColor','k','EdgeAlpha',0.70);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.7$', ...
    'Interpreter','latex')

h8 = WattsStrogatz(1000,50,0.80);
plot(h8,'NodeColor','k','EdgeAlpha',0.80);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.8$', ...
    'Interpreter','latex')

h9 = WattsStrogatz(1000,50,0.90);
plot(h9,'NodeColor','k','EdgeAlpha',0.90);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.9$', ...
    'Interpreter','latex')

% 200 Random nodes removals for all values of betas with increased K
y1=randsample(numnodes(h1),10) %change "h1" according to desired betas for simulations
h21=rmnode(h1,y1)

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

%plot the new subnetwork with 800 nodes after the random removals

plot(h40,'NodeColor','k','EdgeAlpha',0.10); %value of betas change according to the generated network
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 50$, and $\beta = 0.1$', ...
    'Interpreter','latex')

%plot the new subnetwork with 800 nodes after the random removals with
%colored degree distribution
colormap hsv
deg = degree(h40);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h40,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 50$, and $\beta = 0.10$', ...
    'Interpreter','latex')
colorbar

%% Extra functions

%1. Function to see and compare the degree distributions of the WS models
histogram(degree(h1), 'BinMethod' , 'integers' , 'FaceAlpha' ,0.1);
hold on 
histogram(degree(h2), 'BinMethod' , 'integers' , 'FaceAlpha' ,0.2);
histogram(degree(h3), 'BinMethod' , 'integers' , 'FaceAlpha' ,0.3);
histogram(degree(h4), 'BinMethod' , 'integers' , 'FaceAlpha' ,0.4);
hold off 
title( 'Node degree distributions for Watts-Strogatz Model Graphs' )
xlabel( 'Degree of node' )
ylabel( 'Number of nodes' )
legend( '\beta = 0.1' , '\beta = 0.2' , '\beta = 0.3' , '\beta = 0.4' , 'Location' , 'NorthWest' )


%2. Function to create a table that state the average path length and
%number of hubs in the networks
n = 55; %determine the hubs by setting the nodes(n) to be 55 or higher(can change accordingly)
d = [mean(mean(distances(h1))), nnz(degree(h1)>=n); ...
     mean(mean(distances(h2))), nnz(degree(h2)>=n); ...
     mean(mean(distances(h3))), nnz(degree(h3)>=n);
     mean(mean(distances(h4))), nnz(degree(h4)>=n)];
T = table([0.10 0.20 0.30 0.40]', d(:,1), d(:,2),...
    'VariableNames',{'Beta','AvgPathLength','NumberOfHubs'})

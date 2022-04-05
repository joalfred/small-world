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

% 200 Deliberate Nodes Removals for all values of beta

% "i" returns the ordered degrees (ignore it), while "j" is useful that indicates the node IDs of the corresponding degrees
% "a" returns the IDs of nodes that have the top10 largest degrees.


d1 =degree(h1); % change "h1" according to the desired beta for the simulations
[i,j]=sort(d1,'descend'); 
a1=j(1:10) ;
y1 = rmnode(h1,a1)

d2=degree(y1);
[i,j]=sort(d2,'descend');
a2=j(1:10);
y2 = rmnode(y1,a2)

d3=degree(y2);
[i,j]=sort(d3,'descend');
a3=j(1:10); 
y3 = rmnode(y2,a3)

d4=degree(y3);
[i,j]=sort(d4,'descend');
a4=j(1:10); 
y4 = rmnode(y3,a4)

d5=degree(y4);
[i,j]=sort(d5,'descend');
a5=j(1:10); 
y5 = rmnode(y4,a5)

d6=degree(y5);
[i,j]=sort(d6,'descend');
a6=j(1:10); 
y6 = rmnode(y5,a6)

d7=degree(y6);
[i,j]=sort(d7,'descend');
a7=j(1:10); 
y7 = rmnode(y6,a7)

d8=degree(y7);
[i,j]=sort(d8,'descend');
a8=j(1:10); 
y8 = rmnode(y7,a8)

d9=degree(y8);
[i,j]=sort(d9,'descend');
a9=j(1:10); 
y9 = rmnode(y8,a9)

d10=degree(y9);
[i,j]=sort(d10,'descend');
a10=j(1:10); 
y10 = rmnode(y9,a10)

d11=degree(y10);
[i,j]=sort(d11,'descend');
a11=j(1:10); 
y11 = rmnode(y10,a11)

d12=degree(y11);
[i,j]=sort(d12,'descend');
a12=j(1:10); 
y12 = rmnode(y11,a12)

d13=degree(y12);
[i,j]=sort(d13,'descend');
a13=j(1:10); 
y13 = rmnode(y12,a13)

d14=degree(y13);
[i,j]=sort(d14,'descend');
a14=j(1:10); 
y14 = rmnode(y13,a14)

d15=degree(y14);
[i,j]=sort(d15,'descend');
a15=j(1:10); 
y15 = rmnode(y14,a15)

d16=degree(y15);
[i,j]=sort(d16,'descend');
a16=j(1:10); 
y16 = rmnode(y15,a16)

d17=degree(y16);
[i,j]=sort(d17,'descend');
a17=j(1:10); 
y17 = rmnode(y16,a17)

d18=degree(y17);
[i,j]=sort(d18,'descend');
a18=j(1:10); 
y18 = rmnode(y17,a18)

d19=degree(y18);
[i,j]=sort(d19,'descend');
a19=j(1:10); 
y19 = rmnode(y18,a19)

d20=degree(y19);
[i,j]=sort(d20,'descend');
a20=j(1:10); 
y20 = rmnode(y19,a20)



%plot the new subnetwork with 800 nodes after the deliberate removals

plot(y20,'NodeColor','k','EdgeAlpha',0.10); %value of betas change according to the generated network
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 25$, and $\beta = 0.1$', ...
    'Interpreter','latex')

%plot the new subnetwork with 800 nodes after the deliberate removals with
%colored degree distribution
colormap hsv
deg = degree(y20);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(y20,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)
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

% 200 Deliberate nodes removals for all values of K
d1 =degree(h1); % change "h1" according to the desired K for the simulations
[i,j]=sort(d1,'descend');
a1=j(1:10) ;
y1 = rmnode(h1,a1)

d2=degree(y1);
[i,j]=sort(d2,'descend');
a2=j(1:10);
y2 = rmnode(y1,a2)

d3=degree(y2);
[i,j]=sort(d3,'descend');
a3=j(1:10); 
y3 = rmnode(y2,a3)

d4=degree(y3);
[i,j]=sort(d4,'descend');
a4=j(1:10); 
y4 = rmnode(y3,a4)

d5=degree(y4);
[i,j]=sort(d5,'descend');
a5=j(1:10); 
y5 = rmnode(y4,a5)

d6=degree(y5);
[i,j]=sort(d6,'descend');
a6=j(1:10); 
y6 = rmnode(y5,a6)

d7=degree(y6);
[i,j]=sort(d7,'descend');
a7=j(1:10); 
y7 = rmnode(y6,a7)

d8=degree(y7);
[i,j]=sort(d8,'descend');
a8=j(1:10); 
y8 = rmnode(y7,a8)

d9=degree(y8);
[i,j]=sort(d9,'descend');
a9=j(1:10); 
y9 = rmnode(y8,a9)

d10=degree(y9);
[i,j]=sort(d10,'descend');
a10=j(1:10); 
y10 = rmnode(y9,a10)

d11=degree(y10);
[i,j]=sort(d11,'descend');
a11=j(1:10); 
y11 = rmnode(y10,a11)

d12=degree(y11);
[i,j]=sort(d12,'descend');
a12=j(1:10); 
y12 = rmnode(y11,a12)

d13=degree(y12);
[i,j]=sort(d13,'descend');
a13=j(1:10); 
y13 = rmnode(y12,a13)

d14=degree(y13);
[i,j]=sort(d14,'descend');
a14=j(1:10); 
y14 = rmnode(y13,a14)

d15=degree(y14);
[i,j]=sort(d15,'descend');
a15=j(1:10); 
y15 = rmnode(y14,a15)

d16=degree(y15);
[i,j]=sort(d16,'descend');
a16=j(1:10); 
y16 = rmnode(y15,a16)

d17=degree(y16);
[i,j]=sort(d17,'descend');
a17=j(1:10); 
y17 = rmnode(y16,a17)

d18=degree(y17);
[i,j]=sort(d18,'descend');
a18=j(1:10); 
y18 = rmnode(y17,a18)

d19=degree(y18);
[i,j]=sort(d19,'descend');
a19=j(1:10); 
y19 = rmnode(y18,a19)

d20=degree(y19);
[i,j]=sort(d20,'descend');
a20=j(1:10); 
y20 = rmnode(y19,a20)

%plot the new subnetwork with 800 nodes after the deliberate removals

plot(y20,'NodeColor','k','EdgeAlpha',0.10); %value of K change according to the genrated network
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 25$, and $\beta = 0.1$', ...
    'Interpreter','latex')

%plot the new subnetwork with 800 nodes after the deliberate removals with
%colored degree distribution
colormap hsv
deg = degree(y20);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(y20,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)%value of K change according to the generated network
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

% 200 Delberate Nodes removals while increasing beta(0.1 to 0.9) and increased K as 50 
d1 =degree(h1); % change "h1" according to the desired beta for the simulations
[i,j]=sort(d1,'descend');
a1=j(1:10) ;
y1 = rmnode(h1,a1)

d2=degree(y1);
[i,j]=sort(d2,'descend');
a2=j(1:10);
y2 = rmnode(y1,a2)

d3=degree(y2);
[i,j]=sort(d3,'descend');
a3=j(1:10); 
y3 = rmnode(y2,a3)

d4=degree(y3);
[i,j]=sort(d4,'descend');
a4=j(1:10); 
y4 = rmnode(y3,a4)

d5=degree(y4);
[i,j]=sort(d5,'descend');
a5=j(1:10); 
y5 = rmnode(y4,a5)

d6=degree(y5);
[i,j]=sort(d6,'descend');
a6=j(1:10); 
y6 = rmnode(y5,a6)

d7=degree(y6);
[i,j]=sort(d7,'descend');
a7=j(1:10); 
y7 = rmnode(y6,a7)

d8=degree(y7);
[i,j]=sort(d8,'descend');
a8=j(1:10); 
y8 = rmnode(y7,a8)

d9=degree(y8);
[i,j]=sort(d9,'descend');
a9=j(1:10); 
y9 = rmnode(y8,a9)

d10=degree(y9);
[i,j]=sort(d10,'descend');
a10=j(1:10); 
y10 = rmnode(y9,a10)

d11=degree(y10);
[i,j]=sort(d11,'descend');
a11=j(1:10); 
y11 = rmnode(y10,a11)

d12=degree(y11);
[i,j]=sort(d12,'descend');
a12=j(1:10); 
y12 = rmnode(y11,a12)

d13=degree(y12);
[i,j]=sort(d13,'descend');
a13=j(1:10); 
y13 = rmnode(y12,a13)

d14=degree(y13);
[i,j]=sort(d14,'descend');
a14=j(1:10); 
y14 = rmnode(y13,a14)

d15=degree(y14);
[i,j]=sort(d15,'descend');
a15=j(1:10); 
y15 = rmnode(y14,a15)

d16=degree(y15);
[i,j]=sort(d16,'descend');
a16=j(1:10); 
y16 = rmnode(y15,a16)

d17=degree(y16);
[i,j]=sort(d17,'descend');
a17=j(1:10); 
y17 = rmnode(y16,a17)

d18=degree(y17);
[i,j]=sort(d18,'descend');
a18=j(1:10); 
y18 = rmnode(y17,a18)

d19=degree(y18);
[i,j]=sort(d19,'descend');
a19=j(1:10); 
y19 = rmnode(y18,a19)

d20=degree(y19);
[i,j]=sort(d20,'descend');
a20=j(1:10); 
y20 = rmnode(y19,a20)

%plot the new subnetwork with 800 nodes after the deliberate removals

plot(y20,'NodeColor','k','EdgeAlpha',0.10); %value of betas change according to the generated network
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 50$, and $\beta = 0.1$', ...
    'Interpreter','latex')

%plot the new subnetwork with 800 nodes after the deliberate removals with
%colored degree distribution
colormap hsv
deg = degree(y20);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(y20,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)%value of betas change according to the generated network
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

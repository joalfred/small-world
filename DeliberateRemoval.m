%% graph functions
h1 = WattsStrogatz(1000,25,0.10);
plot(h1,'NodeColor','k','EdgeAlpha',0.20);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.1$', ...
    'Interpreter','latex')

h2 = WattsStrogatz(1000,25,0.20);
plot(h2,'NodeColor','k','EdgeAlpha',0.2);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.2$', ...
    'Interpreter','latex')

h3 = WattsStrogatz(1000,25,0.40);
plot(h3,'NodeColor','k','EdgeAlpha',0.40);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.40$', ...
    'Interpreter','latex')

h4 = WattsStrogatz(1000,25,0.60);
plot(h4,'NodeColor','k','EdgeAlpha',0.60);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.60$', ...
    'Interpreter','latex')

colormap hsv
deg = degree(h12);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h12,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.1$', ...
    'Interpreter','latex')
colorbar

n = 55; %determine the hubs by setting the nodes(n) to be 55 or higher
d = [mean(mean(distances(h1))), nnz(degree(h1)>=n); ...
     mean(mean(distances(h2))), nnz(degree(h2)>=n); ...
     mean(mean(distances(h3))), nnz(degree(h3)>=n);
     mean(mean(distances(h4))), nnz(degree(h4)>=n)];
T = table([0.20 0.40 0.60 0.80]', d(:,1), d(:,2),...
    'VariableNames',{'Beta','AvgPathLength','NumberOfHubs'})

%deliberately targetting hubs, 
%start from h61

% "i" returns the ordered degrees (ignore it), while "j" is useful that indicates the node IDs of the corresponding degrees
% "a" returns the IDs of nodes that have the top10 degrees.

%% 1. increase rewiring probability only
h4 = WattsStrogatz(1000,25,0.60);
plot(h4,'NodeColor','k','EdgeAlpha',0.60);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.60$', ...
    'Interpreter','latex')



colormap hsv
deg = degree(h4);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h4,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.60)
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 25$, and $\beta = 0.6$', ...
    'Interpreter','latex')
colorbar


d1 =degree(h4);
[i,j]=sort(d1,'descend');
a1=j(1:10) ;
y1 = rmnode(h4,a1)

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


plot(y20,'NodeColor','k','EdgeAlpha',0.60);
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 25$, and $\beta = 0.6$', ...
    'Interpreter','latex')

colormap hsv
deg = degree(y20);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(y20,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.40)
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 25$, and $\beta = 0.6$', ...
    'Interpreter','latex')
colorbar


%% 2. increase K parameter only, set rewiring prob to be 0.1

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
h9 = WattsStrogatz(1000,50,0.10)
plot(h9,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.1$', ...
    'Interpreter','latex')


colormap hsv
deg = degree(h9);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h9,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.1$', ...
    'Interpreter','latex')
colorbar

%simulation starts here
d1 =degree(h9);
[i,j]=sort(d1,'descend');
a1=j(1:10) ;
y1 = rmnode(h9,a1)

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


plot(y20,'NodeColor','k','EdgeAlpha',0.10);
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 50$, and $\beta = 0.1$', ...
    'Interpreter','latex')

colormap hsv
deg = degree(y20);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(y20,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.10)
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 50$, and $\beta = 0.1$', ...
    'Interpreter','latex')
colorbar

%%  3. Increase K(=50) and rewring probability

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
h13 = WattsStrogatz(1000,50,0.60);
plot(h13,'NodeColor','k','EdgeAlpha',0.60);
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.60$', ...
    'Interpreter','latex')


colormap hsv
deg = degree(h13);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(h13,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.60)
title('Watts-Strogatz Graph with $N = 1000$ nodes, $K = 50$, and $\beta = 0.6$', ...
    'Interpreter','latex')
colorbar


d1 =degree(h13);
[i,j]=sort(d1,'descend');
a1=j(1:10) ;
y1 = rmnode(h13,a1)

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


plot(y20,'NodeColor','k','EdgeAlpha',0.60);
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 50$, and $\beta = 0.6$', ...
    'Interpreter','latex')

colormap hsv
deg = degree(y20);
nSizes = 2*sqrt(deg-min(deg)+0.2);
nColors = deg;
plot(y20,'MarkerSize',nSizes,'NodeCData',nColors,'EdgeAlpha',0.60)
title('Watts-Strogatz Graph with $N = 800$ nodes, $K = 50$, and $\beta = 0.6$', ...
    'Interpreter','latex')
colorbar


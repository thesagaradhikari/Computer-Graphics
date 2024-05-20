clc
J=1;
b=0.5;
kn=0.7;
K=50;
s=tf('s');
G=1/(J*s+b);
G2=feedback(G,kn,-1);
G3=series(G2,K/s);
G4=feedback(G3,1,-1);
%step(G4);
%responce analysis

%root locus analysis
G4=13.1/(s*(s+4)*(s+5));
G5=feedback(G4,1,-1);

grid on

%nyquist plot
nyquist(G5);
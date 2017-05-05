clc;
%a=Matriz dos coeficientes
Ax=[5  2  1;
   3  6 -2;
   2 -4 10];

%b=Matriz resposta
b=[8;
   7;
   8];

%x0=Estimativa inicial das raizes
x0=[0;
    0;
    0];

%Precisao e limite de execucoes
e=0.0001;
maxi=20;

raizesJacobi = gaussJacobi(Ax,b,x0,e,maxi);
disp(raizesJacobi);
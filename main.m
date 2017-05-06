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
maxi=30;

raizesJacobi = gaussJacobi(Ax,b,x0,e,maxi);
%disp(raizesJacobi');
raizesSeidel = gaussSeidel(Ax,b,x0,e,maxi);
%disp(raizesSeidel');

%Saida dos metodos
fprintf('\t\t\tgaussJacobi \t\t- \t\tgaussSeidel\n');
for i=1:maxi
    if(norm(raizesJacobi(:,i))==0 && norm(raizesSeidel(:,i))==0)
        break;
    end
    fprintf('k=%d \t%.4f \t%.4f \t%.4f \t-\t%.4f \t%.4f \t%.4f\n',i,raizesJacobi(:,i)',raizesSeidel(:,i)');
end

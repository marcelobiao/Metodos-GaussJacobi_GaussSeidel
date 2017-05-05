function raizes = gaussJacobi(Ax,b,x0,e,maxi);
    fprintf('Método de GaussJacobi:\n');
    [m,n]=size(Ax);
    
    for k=1:maxi
        for i=1:n
            Sum1 = b(i)-Ax(i,[1:i-1,i+1:n])*x0([1:i-1,i+1:n]);
            x(i,1) = Sum1/Ax(i,i);
        end
        erro=abs(norm(x-x0));
        x0=x;
        if (erro<e)
            break;
        end        
    end
    raizes=x;
end
function raizes = gaussJacobi(Ax,b,x0,e,maxi);
    [m,n]=size(Ax);
    raizes=zeros(m,maxi);
    x=zeros(m,1);
    
    for k=1:maxi
        for i=1:n
            x(i,1) = (b(i)-Ax(i,[1:i-1,i+1:n])*x0([1:i-1,i+1:n]))/Ax(i,i);
        end        
        erro=abs(norm(x-x0));
        x0=x;
        raizes(:,k)=x;
        if (erro<e)
            break;
        end        
    end
end
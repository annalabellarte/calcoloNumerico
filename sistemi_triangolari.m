
function x=sistemi_triangolari(A, b)
    n = length(b);
    %controlli sull'input
    if(n~=length(A))
        error("errore 1");
    end
    if(abs(A(n,n)<eps))
        error('La matrice non e'' singolare');
    end
    [j,k] = size(A);[m,n] = size(A);
    if(j ~=k)
        error('La matrice non e'' quadrata');
    end
    if(~triu(A))
        error('A deve essere triangolare superiore');
    end
    
    x(n)= b(n)/A(n,n);
    for(i=n-1:-1:1)
        x(i)=b(i);
        for(j=i+1:n)
           x(i)= (x(i)-(A(i,j)*x(j)));
        end
        if(abs(A(n,n)>eps))
        x(i) =x(i)/A(i,i);
        else
            error('matrice s>ingolare');
        end
    end
  return  
end
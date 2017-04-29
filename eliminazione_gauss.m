function [x,v]= gauss(A,b)
[m,n]= size(A);
if m~=n
    error('Metodo non applicabile, A non quadrata');
end
if(length(b)~= n)
    error('metodo non applicabile');
end
for(k=1:n)A=[6 4 1 0;-1 8 1 1;3 0 6 -3;1 -2 1 7];
b=[1;2;3;4];
[x,v]=gauss(A,b);
    if(abs(A(k,k)<eps))
        error('Elemento pivotale nullo');
    end
    for i=k+1:n
        A(i,k)=A(i,k)/A(k,k);
        for(j=k+1:n)
            A(i,j)=A(i,j)-A(i,k)*A(k,j);
        end
    end
   
end
x=sistemi_triangolari(A,b);
v=A;
end
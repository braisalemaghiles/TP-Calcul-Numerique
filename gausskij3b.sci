function X = gausskij3b(A,B)


mik=0
n=size(A,1)
m=size(B,2)
zeros(size(B,1),size(B,2))


for k = 1 : n-1
    for i = k+1 : n
        mik=A(i,k)/A(k,k)
        B(i)=B(i)- mik * B(k)
        for j = k+1 : n 
            A(i,j) = A(i,j) - mik * A(k,j)
           end
    end
   
end


X(n) = B(n)/A(n,n)
for i=n-1:-1:1
   X(i)=(B(i)-A(i,(i+1):n)* X((i+1):n))/A(i,i);
end


endfunction

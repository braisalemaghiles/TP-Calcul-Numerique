function [ x,k ] = Jacobi( A,b,x0,tol,max_iter )

pop=tol+1;
k=0; D=diag(diag(A)); 
while(norm(pop)>tol) && k<=max_iter
    pop=D\(b-A*x0);
    x=x0+pop;
    k=k+1;
    x0=x;
end
end

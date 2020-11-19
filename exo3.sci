
n = 10

A=rand(n,n)
B=rand(n,n)

tic;


C3B= matmat3b(A,B)



toc


tic;

C2B= matmat2b(A,B)


toc

tic;

C1B= matmat1b(A,B)


toc

tic;

Cnorm=A*B


toc

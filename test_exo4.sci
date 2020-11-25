s = 100
rand("seed")

n=4

U=rand(n,n);

UL=tril(U);
UU=triu(U);
            
            
xex=rand(n,1);

b =  UU*xex;
b1 = UL*xex;

xl = lsolve(U,b)
xu = usolve(U,b)


fErrorB = norm(xex-xu,2)/norm(xex,2)
fErrorB1 = norm(xex-xl,2)/norm(xex,2)

bErrorB = norm(b-U*xu,2)/norm(b,2)
bErrorB1 = norm(b-U*xl,2)/norm(b,2)

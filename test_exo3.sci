s = 100;
rand("seed");
xdata = [10:10:100];
for n= xdata
    
    i=n/10;

A=rand(n,n);

L=tril(A);
U=triu(A);         
xex=rand(n,1);

b =  U*xex;
x= usolve(U,b);
fErrorU(i) = norm(xex-x,2)/norm(xex,2);
bErrorU(i) = norm(b-U*x,2)/norm(b,2);


b = L*xex;
x = usolve(L,b);
fErrorL(i) = norm(xex-x,2)/norm(xex,2);
bErrorL(i) = norm(b-L*x,2)/norm(b,2);

end



plot(xdata,log(fErrorU),"r");
plot(xdata,log(bErrorU),"b");
//clf(1);


plot(xdata,log(fErrorL),"g");
plot(xdata,log(bErrorL),"y");

hl=legend(['fErrorU';'bErrorU';'fErrorL';'bErrorL']);
//clf(2);



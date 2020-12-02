s = 100;
rand("seed");


data= [10:10:100]
 for n= data   
    i=n/10;

A=rand(n,n);

xex = rand(n,1);

B= A*xex;

sol=gausskij3b(A,B);

ferr(i)= norm(B-xex)/norm(xex);
berr(i)= norm(B-A*sol)/norm(B);


end



plot(data,log(ferr),'r');
plot(data,log(berr),'g');

hl=legend(['ferr';'berr']);






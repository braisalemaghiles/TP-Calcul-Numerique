s = 100
rand("seed")



taille = [3 4 5 6 7 8 9]

for i= 1:length(taille)

A=rand(taille(i),taille(i))

xex = rand(taille(i),1)

B= A*xex

sol=gausskij3b(A,B)

ferr= norm(B-xex)/norm(xex)
berr= norm(B-A*sol)/norm(B)


end





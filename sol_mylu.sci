function[x]= mylu_sol(L,U,P,b)
    bb=P*b;
    y = lsolve(L,bb);
    x= uslove(U,y);
endfunction



function exo2 (data,e)
    
    format("e",e)
    
 for n= data   
    i=n/10;
    A = rand(n,n)
    disp("A=",A)
    
    xex = rand(n,1)
    disp("xex=",xex)
    
    b = A*xex
    disp("b=",b)
    
    x = A\b
    disp("x=",x)
    
   
    flerlres(i) = norm(x-xex)/norm(xex)
    //disp("flerlres=",flerlres)

    brelres(i) = norm(b-A*x)/norm(b)
    //disp("brelres=",brelres)
    
    con(i) =cond(A)
    //disp("cond=",con)
    
    borne(i) = con(i)*brelres(i)
 //   disp("borne=",borne(i)
end



plot(data,log(flerlres),"r");
//plot(data,log(brelres),"b");
plot(data,log(borne),"g");

hl=legend(['flerlres';'borne']);
  
    
endfunction

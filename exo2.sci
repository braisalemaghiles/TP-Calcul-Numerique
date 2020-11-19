function exo2 (n,e)
    
    format("e",e)
    
    A = rand(n,n)
    disp("A=",A)
    
    xex = rand(n,1)
    disp("xex=",xex)
    
    b = A*xex
    disp("b=",b)
    
    x = A\b
    disp("x=",x)
    
   
    flerlres = norm(x-xex)/norm(xex)
    disp("flerlres=",flerlres)
    brelres = norm(b-A*x)/norm(b)
    disp("brelres=",brelres)
    
    con =cond(A)
    disp("cond=",con)
    
    borne = cond(A)*brelres
    disp("borne=",borne)

  
    
endfunction

function d = oddaljenost(Bx,By,Bz,u,v)
   [bx,by,bz]=beziersurf(Bx,By,Bz,u,v);
   d = norm([bx,by,bz] - [0.000000000000000, 1.030000000000000, 1.030000000000000]);
endfunction
% Opis:
%  beziersurf vrne tocke na Bezierjevi ploskvi iz tenzorskega produkta
%
% Definicija:
%  [bx,by,bz] = beziersurf(Bx,By,Bz,u,v)
%
% Vhod:
%  Bx, By, Bz   matrike velikosti n+1 x m+1, ki predstavljajo koordinate
%               kontrolnih tock,
%  u, v         vrstici dolzine M in N, ki predstavljata parametre v smereh
%               u in v.
%
% Izhod:
%  bx, by, bz   matrike velikosti N x M, ki predstavljajo tocke na
%               Bezierjevi ploskvi: [bx(J,I) by(J,I) bz(J,I)] je tocka pri
%               parametrih u(I) in v(J)

function [bx,by,bz] = beziersurf(Bx,By,Bz,u,v)
   m = size(u)(1);
   n = size(v)(1);
   bx = zeros(n, m);
   by = zeros(n, m);
   bz = zeros(n, m);
   for j = 1:n
       % fiksen v s kontrolnimi tockami T
       V = v(j,:);
       T = zeros(m+1,3);
       for i = 1:m+1
          T(i, :) = bezier([Bx(:, i),By(:, i),Bz(:, i)], V);
       endfor
       vals = bezier(T, u);
       bx(j, :) = vals(:, 1);
       by(j, :) = vals(:, 2);
       bz(j, :) = vals(:, 3);
   endfor
endfunction
            
            
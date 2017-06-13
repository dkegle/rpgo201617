% Opis:
%  rbezierelv izvede visanje stopnje dane racionalne Bezierjeve krivulje
%
% Definicija:
%  [Be,we] = rbezierelv(B,w)
%
% Vhodna podatka:
%  B    matrika velikosti (n+1) x d, v kateri vsaka vrstica predstavlja
%       d-dimenzionalno kontrolno tocko racionalne Bezierjeve krivulje
%       stopnje n,
%  w    seznam utezi racionalne Bezierjeve krivulje
%
% Izhodni podatek:
%  Be   matrika velikosti n+2 x d, v kateri vsaka vrstica predstavlja
%       d-dimenzionalno kontrolno tocko racionalne Bezierjeve krvulje
%       stopnje n+1, ki ustreza dani racionalni Bezierjevi krivulji,
%  we   seznam dolzine n+2, v katerem vsak element predstavlja utez
%       racionalne Bezierjeve krvulje stopnje n+1, ki ustreza dani
%       racionalni Bezierjevi krivulji

function [Be,we] = rbezierelv(B,w,k)
   n = size(B)(1);
   d = size(B)(2);
   b = zeros(n,d+1);
   for i=1:n
      for j = 1:d;
         b(i,j)=B(i,j)*w(i);
      endfor
      b(i,d+1)=w(i);
   endfor
   vb = bezierelv(b,k);
   for i=1:n+k
      we(i) = vb(i,end);
      for j=1:d
         Be(i,j) = vb(i,j)/we(i);
      endfor
   endfor
endfunction
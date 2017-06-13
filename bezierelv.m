# control points given as
#  [x1,y1; x2,y2;...] or [x1,y1,z1; x2,y2,z2;...]
# k ... natural number
function P = bezierelv(control_points, k)
   n = size(control_points)(1);
   dimension = size(control_points)(2);
   P = zeros(n+k, dimension);
   for i=1:n+k
      b_i = zeros(1, dimension);
      for j=1:n
         if(j <= i && i-j <= k && i <= n+k)
            c = nchoosek(k, i-j)/nchoosek(n-1+k, i-1);
            c *= nchoosek(n-1,j-1);
            b_i += c*control_points(j,:);
         endif
      endfor
      P(i,:) = b_i;
   endfor
endfunction
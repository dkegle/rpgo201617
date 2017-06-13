# control points given as
#  [x1,y1; x2,y2;...] or [x1,y1,z1; x2,y2,z2;...]
# param_values given as
#  [t1,t2,...]
# r.. r-th derivative

function D = bezierder(control_polygon, param_values, r)
   n = size(param_values)(2);
   m = size(control_polygon)(1);
   D = zeros(n, size(control_polygon)(2));
   for i = 1:n
      C = decasteljau(control_polygon, param_values(i));
      v = C(1:r+1,m-r,:);
      k = factorial(m-1)/factorial(m-r-1);
      D(i,:) = k*diff(v,r);
   endfor
endfunction
# control points given as
# [x1,y1;x2,y2;...] or [x1,y1,z1;x2,y2,z2;...]
# t ... parameter, 0 <= t <= 1

function C = decasteljau (control_points, t)
   n = size(control_points)(1);
   C = zeros(n, n, size(control_points)(2));
   for i = 1:n
      C(i,1,:) = control_points(i,:);
   endfor
   for r = 2:n
      for i = 1:n-r+1
         C(i,r,:) = (1-t)*C(i,r-1,:) + t*C(i+1,r-1,:);
      endfor
   endfor
endfunction
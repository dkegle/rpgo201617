# control points given as
# [x1,y1;x2,y2;...] or [x1,y1,z1;x2,y2,z2;...]
# param_values given as
# [t1, t2,...]
# returns [b1,b2;b3,b4;...]  (or [b1,b2,b3; b4,b5,b6;...])

function B = bezier(control_points, param_values)
   n = size(param_values)(2);
   B = zeros(n, size(control_points)(2));
   for i = 1:n
      S = decasteljau(control_points, param_values(i));
      B(i,:) = S(1, size(S)(2),:);
   endfor
endfunction
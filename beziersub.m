# control points given as
#  [x1,y1; x2,y2;...] or [x1,y1,z1; x2,y2,z2;...]
# s ... parameter (float)
# k ... natural number
function P = beziersub(control_points, s, k)
   if(k==0)
      P = control_points;
      return;
   endif
   C = decasteljau(control_points, s);
   temp = C(1,:,:);
   S1 = zeros(size(temp)(2), size(temp)(3));
   for i=1:size(temp)(2)
      S1(i,:) = temp(1,i,:);
   endfor
   n = size(control_points)(1);
   dimension = size(control_points)(2);
   S2 = zeros(n, dimension);
   for i=1:n
      S2(i,:) = C(i,n-i+1,:);
   endfor
   P = cat(1, beziersub(S1, s, k-1), beziersub(S2, s, k-1));
endfunction
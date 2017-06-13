# control points given as
#  [x1,y1; x2,y2;...] or [x1,y1,z1; x2,y2,z2;...]
# weights given as 
#  [w1, w2, w3,...]
# parameters t [t1, t2, ...]

function b = rbezier(control_points, weights, t)
   for i=1:size(t)(2)
      b(i,:)=rdecasteljau(control_points,weights,t(i));
   endfor
endfunction
# control points given as
#  [x1,y1; x2,y2;...] or [x1,y1,z1; x2,y2,z2;...]
# weights given as 
#  [w1, w2, w3,...]
# parameters t [t1, t2, ...]

function plotrbezier(control_points, weights, param_values)
   points = rbezier(control_points, weights, param_values)';
   P = control_points';
   hold;
   dimension = size(control_points)(2);
   if(dimension == 2)
      plot(points(1,:), points(2,:))
      plot(P(1,:), P(2,:))
   elseif(dimension == 3)
      view(3);
      plot3(points(1,:), points(2,:), points(3,:))
      plot3(P(1,:), P(2,:), P(3,:))
   endif
   hold off;
endfunction
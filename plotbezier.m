# control points given as
# [x1,y1;x2,y2;...] or [x1,y1,z1;x2,y2,z2;...]
# param_values given as
# [t1,t2,...]

function plotbezier(control_points, param_values)
   points = bezier(control_points, param_values)';
   P = control_points';
   hold on;
   dimension = size(control_points)(2);
   if(dimension == 2)
      plot(points(1,:), points(2,:), 'LineWidth',3, 'color', 'k')
      plot(P(1,:), P(2,:), 'LineWidth',1, 'color', 'k')
      axis('off')
   elseif(dimension == 3)
      view(3);
      plot3(points(1,:), points(2,:), points(3,:))
      plot3(P(1,:), P(2,:), P(3,:))
   endif
   %hold off;
endfunction
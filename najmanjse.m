function k = najmanjse(control_points, weights, t)
   epsilon = 0.025;
   d = 1.0;
   k = -1;
   tocka = [0.510288065843621 , -1.373456790123457];
   while d > epsilon
      k = k + 1;
      [Be, we] = rbezierelv(control_points, weights, k);
      pnt = bezier(Be, t);
      d = norm(pnt - tocka)
   endwhile
endfunction
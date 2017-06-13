# control points given as
#  [x1,y1; x2,y2;...] or [x1,y1,z1; x2,y2,z2;...]
# weights given as 
#  [w1, w2, w3,...]
# t ... float

function b = rdecasteljau(control_points,weights,t)
   n = size(control_points)(1);
   B = zeros(n,n,size(control_points)(2));
   w = zeros(n);
   for i=1:n
      B(i,1,:)=control_points(i,:);
      w(i,1)=weights(i);
   endfor
   for r=2:n
      for i=1:n-r+1
         w(i,r)=(1-t)*w(i,r-1)+t*w(i+1,r-1);
         B(i,r,:)=(1-t)*w(i,r-1)/w(i,r).*B(i,r-1,:)+t*w(i+1,r-1)/w(i,r).*B(i+1,r-1,:);
      endfor
   endfor
   b=B(1,n,:);
endfunction
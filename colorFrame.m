function color = colorFrame(frame,steepness=0.05)

  f = @(z,c) z.*z + c;

  original_frame = frame;

  color = zeros(size(frame));

  %notice that f(0,frame) == frame, so we can skip 0.
  max_iterations = 255;
  for i = 1:max_iterations
    j = (abs(frame) < 2);
    color(j) = i;
    frame(j) = f(frame(j),original_frame(j));
  endfor


  sum(color(color > 2))
  color(isnan(color)) = 2;
  color = color - min(min(color));
  color = color ./ max(max(color));
  color = color * 255;
  color = uint8(color);
endfunction


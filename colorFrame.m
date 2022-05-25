function color = colorFrame(frame,steepness=0.05)
  $sig = @(x) 255 ./ (1 + exp(-steepness .* x));
  f = @(z,c) z.*z + c;

  original_frame = frame;
  frame = f(0,original_frame);

  num_iterations = 30
  for i = 1:num_iterations
    frame = f(frame,original_frame);
  endfor

  for i = 1:size(frame,1)
    for j = 1:size(frame,2)
      frame(i,j) = norm(frame(i,j));
    endfor
  endfor



  color = frame;
  color(color > 2) = 2;
  color(color < 2) = 0;
  color(isnan(color)) = 2;
  color = color - min(min(color));
  color = color ./ max(max(color));
  color = color * 255;
  color = uint8(color);
endfunction


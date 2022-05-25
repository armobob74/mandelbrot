function color = colorFrame(frame,steepness=0.05)

  f = @(z,c) z.*z + c;

  original_frame = frame;
  frame = f(0,original_frame);

  color = zeros(size(frame));

  max_iterations = 50;
  for i = 1:max_iterations
    frame = f(frame,original_frame);
  endfor

  color = abs(frame);

  color(color > 2) = 2;
  color(color < 2) = 0;
  color(isnan(color)) = 2;
  color = color - min(min(color));
  color = color ./ max(max(color));
  color = color * 255;
  color = uint8(color);
endfunction


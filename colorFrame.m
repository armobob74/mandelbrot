function color = colorFrame(frame,steepness=0.05)
  sig = @(x) 255 ./ (1 + exp(-steepness .* x));
  f = @(z,c) z.*z + c;

  original_frame = frame;
  frame = f(0,original_frame);

  for i = 1:30
    frame = f(frame,original_frame);
  endfor


  for i = 1:size(frame,1)
    for j = 1:size(frame,2)
      frame(i,j) = norm(frame(i,j));
    endfor
  endfor

  color = sig(frame);
  color(isnan(color)) = 255;
  color = color - min(min(color));
  color = color ./ max(max(color));
  color = color * 255;
  color = uint8(color);
endfunction


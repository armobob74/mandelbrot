

c = 0+1i;
zoom = 1
for i = 0:100
  tic;
  frame = zoomFrame(zoom, c,512);
  toc;
  filename = ["animation_images/frame_", num2str(i), ".png"];
  imwrite(frame, filename);
  zoom = zoom * (i + 1);
end

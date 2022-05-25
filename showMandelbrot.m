
n = 512;

frame = initFrame(n,n,-1.5,0.5,-1,1);
frame = colorFrame(frame);

col = linspace(0,1,64)'
row = [col 0*col col]; %purple

c_map = [row; row; row; zeros(64,3)];

imshow(frame,cmap=c_map);
imwrite(frame,c_map,'mandelbrot.png');

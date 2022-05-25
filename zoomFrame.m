function frame = zoomFrame(zoom = 20,center = 0.26 + 0i,quality = 512,x_span = 2,y_span = 2)


x_span = x_span / zoom;
y_span = y_span / zoom;

x_max = real(center) + x_span / 2;
x_min = real(center) - x_span / 2;

y_max = imag(center) + y_span / 2;
y_min = imag(center) - y_span / 2;


h = quality * y_span / x_span;
w = quality * x_span / y_span;
frame = initFrame(h,w,x_min,x_max,y_min,y_max);
frame = colorFrame(frame);
endfunction

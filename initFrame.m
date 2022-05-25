function frame = initFrame(h=15,w=15,min_real = -2, max_real = 2, min_i = -2, max_i = 2)
  %initialize frame on the complex plane
  %frame will have height h (or maybe h+1 if h is even)
  %frame will have width w (or maybe w+1 if 2 is even)
  %frame will be centered at c
  printf("Min real: %d max real: %d min i: %d max i: %d \n",min_real,max_real,min_i,max_i)
  row_vec = linspace(min_real,max_real,w);
  column_vec = linspace(max_i,min_i,h)' * i;
  frame = row_vec + column_vec;
endfunction

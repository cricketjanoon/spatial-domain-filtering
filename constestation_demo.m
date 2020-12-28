img = double(imread('cman_small.pgm'));

k1 = [1 0 -1
      1 0 -1 
      1 0 -1];
  
matlab_res = conv2(img, k1);
my_res = convolve(img, k1);

subplot(1, 2, 1);
imshow(matlab_res, []); title("Malab result");

subplot(1, 2, 2);
imshow(my_res, []); title("My result");
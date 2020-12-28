clear;
clc;

img = double(imread('cman_small.pgm'));

k1 = [1 0 -1
      1 0 -1 
      1 0 -1];
  
k2 = [1 1 1
      0 0 0 
    -1 -1 -1];

k3 = [0 -1 0
      -1 4 -1 
    0 -1 0];

k4 = [0 1 2 1 0
     1 6 10 6 1
     2 10 16 10 2
     1 6 10 6 1
     0 1 2 1 0];

k5 = [ 1 1 1
       1 1 1
       1 1 1];
   
subplot(2, 5, 1); imshow(img, []); title("Original Image");

result1 = convolve(img, k1);
subplot(2, 5, 2); imshow(result1, []); title("Filter 1");

result2 = convolve(img, k2);
subplot(2, 5, 3); imshow(result2, []); title("Filter 2");

result3 = convolve(img, k3);
subplot(2, 5, 4); imshow(result3, []); title("Filter 3");

result4 = convolve(img, k4);
subplot(2, 5, 5); imshow(result4, []); title("Filter 4");


result5 = convolve(img, k5);
subplot(2, 5, 6); imshow(result5, []); title("Average Filter (1 times)");

result6 = convolve(result5, k5);
subplot(2, 5, 7); imshow(result6, []); title("Average Filter (2 times)");

result7 = convolve(result6, k5);
subplot(2, 5, 8); imshow(result7, []); title("Average Filter (3 times)");

result8 = convolve(result7, k5); 
subplot(2, 5, 9); imshow(result8, []); title("Average Filter (4 times)");

twice_mean_filter = convolve(k5/9, k5);
result10 = convolve(img, twice_mean_filter);
subplot(2, 5, 10); imshow(result10, []); title("Derived filter (Twice Mean)");

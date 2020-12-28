clear;
clc;

w_img = imread("w.pgm"); 

filter = [1, 2, 1;
          2, 5, 2;
          1, 2, 1];
      
subplot(2, 5, 1)
imshow(w_img); title("Original Image");

% 1st de-sampling
dec1 = w_img(1:2:end, 1:2:end);
subplot(2, 5, 2);
imshow(dec1, []); title("1st decimation (without filtering)");

% 2nd de-sampling
dec2 = dec1(1:2:end, 1:2:end);
subplot(2, 5, 3);
imshow(dec2, []); title("2nd decimation (without filtering)");

% 3rd de-sampling
dec3 = dec2(1:2:end, 1:2:end);
subplot(2, 5, 4);
imshow(dec3, []); title("3rd decimation (without filtering)");

% 4th de-sampling
dec4 = dec3(1:2:end, 1:2:end);
subplot(2, 5, 5);
imshow(dec4, []); title("3rd decimation (without filtering)");

% 1st decimation with filter
filtered_image = convolve(w_img, filter);
result1 = filtered_image(1:2:end, 1:2:end);
subplot(2, 5, 7); imshow(result1, []); title("1st decimation (with filtering)");

% 2nd decimation with filter
result2 = result1(1:2:end, 1:2:end);
subplot(2, 5, 8); imshow(result2, []); title("2nd decimation (with filtering)");

% 3rd decimation with filter
result3 = result2(1:2:end, 1:2:end);
subplot(2, 5, 9); imshow(result3, []); title("3rd decimation (with filtering)");

% 4th decimation with filter
result4 = result3(1:2:end, 1:2:end);
subplot(2, 5, 10); imshow(result4, []); title("3rd decimation (with filtering)");
clear;
clc;

img = imread('cman_small_saltnpepper.pgm');

% applying median filters
med_fil_image_3by3 = median_filter(img, 3);
med_fil_image_5by5 = median_filter(img, 5);
med_fil_image_9by9 = median_filter(img, 9);

% displaying results
subplot(2, 4, 1); imshow(img, []); title("original image");
subplot(2, 4, 2); imshow(med_fil_image_3by3, []); title("median filter (3 by 3)");
subplot(2, 4, 3); imshow(med_fil_image_5by5, []); title("median filter (5 by 5)");
subplot(2, 4, 4); imshow(med_fil_image_9by9, []); title("median filter (9 by 9)");

% creating average filters
avg_filter_3by3 = ones(3, 3);
avg_filter_5by5 = ones(5, 5);
avg_filter_9by9 = ones(9, 9);

% applying average filters
avg_fil_image_3by3 = convolve(img, avg_filter_3by3); 
avg_fil_image_5by5 = convolve(img, avg_filter_5by5); 
avg_fil_image_9by9 = convolve(img, avg_filter_9by9); 

% displaying results
subplot(2, 4, 6); imshow(avg_fil_image_3by3, []); title("avg filter (3 by 3)");
subplot(2, 4, 7); imshow(avg_fil_image_5by5, []); title("avg filter (5 by 5)");
subplot(2, 4, 8); imshow(avg_fil_image_9by9, []); title("avg filter (9 by 9)");
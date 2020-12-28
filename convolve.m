function [filtered_img] = convolve(img, kernel)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

kernel = rot90(kernel, 2); % rotating the kernel by 180
[r, c] = size(img); % getting image dimensions
[m, n] = size(kernel); % getting kernel dimensions

padding = (m-1)/2;

% extracting the kernel normalizing constant
norm_const = sum(sum(kernel));
if norm_const == 0  
    norm_const = 1;
end

% padding the image
new_image = zeros(r+(2*padding), c+(2*padding));
new_image(padding+1:padding+r, padding+1:padding+c) = double(img);

filtered_img = zeros(size(new_image));

% applying the filter
for i=1+padding : padding+r
    for j=1+padding : padding+c
        filtered_img(i, j) = (1/norm_const)*sum(sum(new_image(i-padding:i+padding, j-padding:j+padding).*kernel));
    end
end

% removing the black border of padding
filtered_img = filtered_img(padding+1:padding+r, padding+1:padding+c);

end


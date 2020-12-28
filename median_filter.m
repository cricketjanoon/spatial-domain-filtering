function [filtered_image] = median_filter(image, filter_size)
%MEDIAN_FILTER Summary of this function goes here
%   Detailed explanation goes here

[r, c] = size(image);
filtered_image = zeros(size(image));

range = (filter_size-1)/2;

for i=1+range: r-range
    for j=1+range : c-range
        med=0;
        temp = image(i-range:i+range, j-range:j+range);
        med = median(temp(:));
        filtered_image(i, j) = med;
    end
end

end


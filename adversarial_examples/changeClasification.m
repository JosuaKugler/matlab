function image = changeClasification(clasifcation,image,weights,n)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[positive,negative] = InfluentalPixels(weights,n);

for i = 1: size(positive,2)
    image(positive(i)) = 255 - sign(clasifcation) * 255;
end
for i = 1: size(negative,2)
    image(negative(i)) = 255 - sign(-clasifcation) * 255;

end


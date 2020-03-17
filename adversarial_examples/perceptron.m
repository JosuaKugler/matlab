function result = perceptron(X,Y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

newData = X;
%newData(:, size(X,2) + 1) = 1;




w = zeros(1,size(newData,2));
risk = 1;
for j = 1:39
    
    
    errors = 0;
    for i = 1:size(newData,1)
        if (Y(i) * (newData(i,:) * w') <= 0)
            w = w + (newData(i,:) * Y(i));
            errors = errors + 1;
            
        end
    
        
        
    end
    
    risk = errors/size(newData,1);
end
disp("Error is " + risk);
result = w;


end


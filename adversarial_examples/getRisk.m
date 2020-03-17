function result = getRisk(X,Y,W)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
w = size(X,2);
l = size(X,1);

risk = 0;

for i = 1:l
    %disp("y is " + Y(i))
    %disp(W);
    %disp(X(i,:))

    %disp("Dot product is " + dotProduct);
    
    %disp("Value is " + X(i,:) * W * Y(i));
    if (dot(X(i,:), W)) * Y(i) <= 0
        
        risk = risk + 1;
    end
end
result = risk/l;
end


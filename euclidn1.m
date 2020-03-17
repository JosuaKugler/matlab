function vec = euclidn1(matrix)
vec = [];
for line = matrix'
    result = 0;
    for value = line'
        result = result+value^2;
    end
    result = sqrt(result);
    vec = [vec,result];
end
vec = vec';
end
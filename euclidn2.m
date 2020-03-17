function vec = euclidn2(matrix)
vec = [];
sqrmatrix = matrix.*matrix;
[rows,columns] = size(matrix);
vec = matrix*ones([columns,1]);
vec = sqrt(vec);
end
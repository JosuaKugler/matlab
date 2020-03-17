function length =  my_len(vector)
vector = [vector, 1];
vector(:) = 1;
length = vector*vector';
length = length-1;
end
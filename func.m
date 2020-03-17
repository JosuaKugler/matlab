function out_matrix=func(in_matrix)
firstrow = in_matrix(1,:);
secondrow = in_matrix(2,:);
sortedfirstrow = sort(firstrow);
sortedsecondrow = [];
length = my_len(firstrow);
integer = my_len(sortedsecondrow);
i = length-integer;
while i >0
    firstrowvalue = sortedfirstrow(my_len(sortedsecondrow)+1);
    sortedsecondrow = [sortedsecondrow, secondrow(firstrow == firstrowvalue)];
    integer = my_len(sortedsecondrow);
    i = length - integer;
end
out_matrix = [sortedfirstrow;sortedsecondrow];
end
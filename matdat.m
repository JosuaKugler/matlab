% Transforming vectors into column vector formatting
n = 0:50;
n = n';
an = n;
% Creating matrix to be called and written to .dat
mat = [n,an];
%%Exporting data to .dat
% Creating file to be written to
fileName = fopen('test.dat','w');
% Writing data to file
fprintf(fileName, '%f %f\n', mat.');
% Closing
fclose(fileName)
function result = loss(nn,x,goal)
pred = nnpredict(nn,x);
result = max(0,1-pred*goal);
end
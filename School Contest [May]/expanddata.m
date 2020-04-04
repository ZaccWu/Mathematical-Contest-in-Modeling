load('A.mat');
load('expandA.mat');
col = 101;
for i = 1:100
    for j = (expandA(i,1)+1):(expandA(i,3)-expandA(i,2)+expandA(i,1))
        expandA(col,1) = j;
        expandA(col,2) = j+expandA(i,2)-expandA(i,1);
        expandA(col,3) = expandA(i,3);
        expandA(col,4) = expandA(i,4);
        col = col+1;
    end
end
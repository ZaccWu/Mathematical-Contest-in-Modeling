function eval = individualevaluation(A)
%A为种群中一个个体，是一个1x2255的行向量，每个值为0或1
eval = 1;
scale = 2255;
%scale = 2269;
load('expandA.mat');
evalarray = zeros(5,2255);%用于储存判断数据的矩阵
evalarray(1,:) = A;

for i = 1:2255
    if(A(i)==1)
        evalarray(2:5,i) = expandA(i,:);
    end
end

%先判断是否有分身
temp = 0;
for i = 1:2255
    if(A(i)==1)
        if(temp==evalarray(4,i))
            eval = 0;
            return
        else
            temp = evalarray(4,i);
        end
    end
end


timeaxis = zeros(1,178);%时间最大为178
for i = 1:2255
    if(evalarray(1,i)==1)
        for t = evalarray(2,i):(evalarray(3,i)-1)
            timeaxis(t) = timeaxis(t)+1;
        end
        for u = evalarray(4,i):(evalarray(5,i)-1)
            timeaxis(u) = timeaxis(u)+1;
        end
    end
end
for t = 1:178
    if(timeaxis(t)>5)%将这里的1换成5则可以判断5个追踪器可不可行
        eval = 0;
        break;
    end
end
%若A可行，则返回1，不行则返回0
end


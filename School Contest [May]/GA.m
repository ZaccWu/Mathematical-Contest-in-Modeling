function count = GA()
clear all;
load('first_group.mat'); %#ok<*LOAD>
X=first_group;
scale=2255;
% load('second_group.mat');
% X = second_group;
% scale = 2269;

iter=0;
Lim1=30000;
N=300;
while(iter<=Lim1)
    iter=iter+1;
    for k = 1:100%往好的方向变异
        a = unidrnd(scale);
        b = unidrnd(2255);
        X(a,b) = 1;
        if(individualevaluation(X(a,1:2255))==1)
            continue
        else
            X(a,b) = 0;
        end
    end
    for i=1:N %交配
        x=unidrnd(scale,1,2); 
%         x = [unidrnd(2255) ceil(2255+rand*14)];%针对第二次迭代，此时只让加进来的14个个体和初始个体交配
        y=X(x(1),1:2255)|X(x(2),1:2255);
        if(individualevaluation(y)==0)
            continue
        else
            if (sum(X(x(1),:)) >= sum(X(x(2),:)))
                X(x(1),1:2255)=y;
            else
                X(x(2),1:2255)=y;
            end
        end  
        
    end
   
    count=[sum(X(1,:)) 1];
    for i=1:scale
    temp=sum(X(i,:));
        if temp>=count(1)
        count=[temp i];
        end
    end
    disp([count,iter]);
    if(iter==Lim1)
    rightdata = X(count(2),:);
    save save.mat rightdata;
    save groupdata.mat X;
%     save secondsave.mat rightdata;
%     save second_group.mat X;
    end
end
end
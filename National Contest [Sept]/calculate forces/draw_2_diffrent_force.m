clear all;clc;
F = [0 0 0 0 0 0 0 0;
    90 80 80 80 80 80 80 80];
Force_list = 60:0.1:120;
%%
%第1号和第2号参与者发力大小不当
F = [0 0 0 0 0 0 0 0;
    90 80 80 80 80 80 80 80];
result_1_2 = [];
min_1_2 = 5;
for k = Force_list
    F(2,2)=k;
    F(2,8)=k;
    temp = rotation_func(F);
    if temp <= min_1_2
        min_1_2 = temp;
    end
    result_1_2 = [result_1_2 temp];
end
%%
%第1号和第3号参与者发力大小不当
F = [0 0 0 0 0 0 0 0;
    90 80 80 80 80 80 80 80];
result_1_3 = [];
min_1_3 = 5;
for k = Force_list
    F(2,3)=k;
    F(2,7)=k;
    temp = rotation_func(F);
    if temp <= min_1_3
        min_1_3 = temp;
    end
    result_1_3 = [result_1_3 temp];
end
%%
%第1号和第4号参与者发力大小不当
F = [0 0 0 0 0 0 0 0;
    90 80 80 80 80 80 80 80];
result_1_4 = [];
min_1_4 = 5;
for k = Force_list
    F(2,4)=k;
    F(2,6)=k;
    temp = rotation_func(F);
    if temp <= min_1_4
        min_1_4 = temp;
    end
    result_1_4 = [result_1_4 temp];
end
%%
%第1号和第5号参与者发力大小不当
F = [0 0 0 0 0 0 0 0;
    90 80 80 80 80 80 80 80];
result_1_5 = [];
min_1_5 = 5;
for k = Force_list
    F(2,5)=k;
    temp = rotation_func(F);
    if temp <= min_1_5
        min_1_5 = temp;
    end
    result_1_5 = [result_1_5 temp];
end
%%
figure(1);
subplot(1,4,1);
plot(Force_list, result_1_2,'r-');
text(65,min_1_2,['最小偏移度数为',num2str(min_1_2)]);
title('1号，2号8号参与者发力不对')
subplot(1,4,2);
plot(Force_list, result_1_3,'r-');
text(65,min_1_3,['最小偏移度数为',num2str(min_1_3)]);
title('1号，3号7号参与者发力不对')
subplot(1,4,3);
plot(Force_list, result_1_4,'r-');
text(65,min_1_4,['最小偏移度数为',num2str(min_1_4)]);
title('1号，4号6号参与者发力不对')
subplot(1,4,4);
plot(Force_list, result_1_5,'r-');
text(65,min_1_5,['最小偏移度数为',num2str(min_1_5)]);
title('1号5号参与者发力不对')

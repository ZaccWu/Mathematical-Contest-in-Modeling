clear all;clc;
F_1 = 30:0.1:130;
F_5 = 0:0.01:2000;
correspond_2_force = [];
F = [80 0 0 0 0 0 0 0;
    80 0 0 0 0 0 0 0];
%这里将其他人的施加力都设为0来防止误差，因为此时如果4和6是变力，就没有人平衡2和8的力，会产生偏转
for f1 = F_1
    for f5 = F_5
        F(1,1) = f1;
        F(2,1) = f1;
        F(2,4) = f5;
        F(2,6) = f5;
        
        result = rotation_func(F);
        if result <= 0.001
            two_force = [f1;f5];
            correspond_2_force = [correspond_2_force two_force];
            break;
        end
    end
    disp(f1);
end
plot(correspond_2_force(1,:), correspond_2_force(2,:), 'r-');
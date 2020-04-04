clear all;clc;
F_1 = 30:0.1:130;
F_5 = 0:0.01:2000;
correspond_force = [];
F = [80 0 0 0 0 0 0 0;
    80 80 80 80 80 80 80 80];
for f1 = F_1
    for f5 = F_5
        F(1,1) = f1;
        F(2,1) = f1;
        F(2,5) = f5;
        result = rotation_func(F);
        if result <= 0.000001
            two_force = [f1;f5];
            correspond_force = [correspond_force two_force];
            break;
        end
    end
    disp(f1);
end
plot(correspond_force(1,:), correspond_force(2,:), 'r-');
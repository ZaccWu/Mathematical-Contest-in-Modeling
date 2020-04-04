function result = rotation_func(F)
% 传入F为发力矩阵，2行N列，第一行为前0.1秒内发力，第二行为0秒时发力
N=length(F(1,:)); %人数
m=3.6;%鼓的质量
h=0.22; %鼓的厚度
R=0.2;%鼓的半径
angle=2*pi/N*(0:(N-1));
Time_sec=[1 2];
lapse=0.1;%时间间隔
omiga=0;%角速度
J=1/2*m*R^2+1/12*m*h^2;%转动惯量
theta=0;
Direction_vector=[0 0 1];%鼓面法向量
b=[0,0,1];
for t=Time_sec
    moment=0; %力矩
    if norm(F(t,:))==0
        continue
    end
    for i=1:N%计算N个人的力相对于原点产生的总力矩
        radius=R*[cos(angle(i)),sin(angle(i)),0];
        f=[0,0,11/170*F(t,i)];
        moment =moment+ cross(radius,f);
    end
    a=moment/J;%加速度
    rotate=1/2*a*lapse^2+omiga*lapse;
    axis=rotate/norm(rotate);%转轴
    theta=norm(rotate);%旋转角度
    omiga=a*lapse+omiga;
    %以下用Rodrigues旋转公式计算旋转后的法向量
    Direction_vector=Direction_vector*cos(theta)+(1-cos(theta))*dot(Direction_vector,axis)*axis+sin(theta)*cross(axis,Direction_vector);
end
result = acosd(dot(Direction_vector,b));
end


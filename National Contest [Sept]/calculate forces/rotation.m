N=8; %人数
m=3.6;%鼓的质量
h=0.22; %鼓的厚度
R=0.2;%鼓的半径
angle=2*pi/N*(0:(N-1));
Force=[80 0 0 0 0 0 0 0;80 80 80 80 80 80 80 80];
Time_sec=[1 2];
lapse=0.1;%时间间隔
omiga=0;%角速度
J=1/2*m*R^2+1/12*m*h^2;
theta=0;
%Direction_vector=[0 0 1];
for t=Time_sec
    moment=0; %力矩
    for i=1:N
        radius=R*[cos(angle(i)),sin(angle(i)),0];
        F=[0,0,11/170*Force(t,i)];
        moment =moment+ cross(radius,F);
    end
    a=moment/J;
    %axis=moment/norm(moment);
    theta=1/2*a*lapse^2+omiga*lapse+theta;
    omiga=a*lapse+omiga;
    %Direction_vector=Direction_vector*cos(theta)+(1-cos(theta))*dot(Direction_vector,axis)*axis+sin(theta)*cross(axis,Direction_vector);
end
norm(theta)*180/pi



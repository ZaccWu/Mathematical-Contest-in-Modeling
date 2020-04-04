function [output] = Countcro(F) %输入一个len=10的向量
d=0.2; %圆的半径
a=[102,66,30,354,318,282,246,210,174,138]*2*pi/360*d; %极坐标转换为直角坐标

r1=[cos(a(1)),sin(a(1)),0];
r2=[cos(a(2)),sin(a(2)),0];
r3=[cos(a(3)),sin(a(3)),0];
r4=[cos(a(4)),sin(a(4)),0];
r5=[cos(a(5)),sin(a(5)),0];
r6=[cos(a(6)),sin(a(6)),0];
r7=[cos(a(7)),sin(a(7)),0];
r8=[cos(a(8)),sin(a(8)),0];
r9=[cos(a(9)),sin(a(9)),0];
r10=[cos(a(10)),sin(a(10)),0];

F1=[0,0,F(1)];
F2=[0,0,F(2)];
F3=[0,0,F(3)];
F4=[0,0,F(4)];
F5=[0,0,F(5)];
F6=[0,0,F(6)];
F7=[0,0,F(7)];
F8=[0,0,F(8)];
F9=[0,0,F(9)];
F10=[0,0,F(10)];

M=cross(F1,r1)+cross(F2,r2)+cross(F3,r3)+cross(F4,r4)+cross(F5,r5)+cross(F6,r6)+cross(F7,r7)+cross(F8,r8)+cross(F9,r9)+cross(F10,r10);

output=M;
end
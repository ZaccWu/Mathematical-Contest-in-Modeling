function [output] = Countcro(F) %输入一个len=10的向量
d=0.2; %圆的半径
a=[102,66,30,354,318,282,246,210,174,138]*2*pi/360; %极坐标转换为直角坐标

%计算空间向量F与r的值
r1=[cos(a(1)),sin(a(1)),0]*d;
r2=[cos(a(2)),sin(a(2)),0]*d;
r3=[cos(a(3)),sin(a(3)),0]*d;
r4=[cos(a(4)),sin(a(4)),0]*d;
r5=[cos(a(5)),sin(a(5)),0]*d;
r6=[cos(a(6)),sin(a(6)),0]*d;
r7=[cos(a(7)),sin(a(7)),0]*d;
r8=[cos(a(8)),sin(a(8)),0]*d;
r9=[cos(a(9)),sin(a(9)),0]*d;
r10=[cos(a(10)),sin(a(10)),0]*d;

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

%计算力系合成的结果
M=cross(r1,F1)+cross(r2,F2)+cross(r3,F3)+cross(r4,F4)+cross(r5,F5)+cross(r6,F6)+cross(r7,F7)+cross(r8,F8)+cross(r9,F9)+cross(r10,F10);

output=M;
end
function Gridsearch(times)
Radom=10000; %生成等距随机数
R1=unidrnd(Radom,times,1)/Radom;
R2=unidrnd(Radom,times,1)/Radom;
R3=unidrnd(Radom,times,1)/Radom;
R10=unidrnd(Radom,times,1)/Radom;
R9=unidrnd(Radom,times,1)/Radom;
R8=unidrnd(Radom,times,1)/Radom;
R7=unidrnd(Radom,times,1)/Radom;
R6=unidrnd(Radom,times,1)/Radom;
R5=unidrnd(Radom,times,1)/Radom;
R4=unidrnd(Radom,times,1)/Radom;
loss=100;
% for i=1:times
%      F=[R1(i),R2(i),0,0,0,0,0,0,0,0];
%      result=Countcro(F);
%      loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%      if loss<0.00000005
%          form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=1 %d\n';
%          fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
%      end
% end
% for i=1:times
%      F=[R1(i),0,R3(i),0,0,0,0,0,0,0];
%      result=Countcro(F);
%      loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%      if loss<0.00000005
%          form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=2 %d\n';
%          fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
%      end
% end
% for i=1:times
%      F=[0,R2(i),0,0,0,0,0,0,R9(i),0];
%      result=Countcro(F);
%      loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%      if loss<0.00000005
%          form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=3 %d\n';
%          fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
%      end
% end
% for i=1:times
%      F=[0,R2(i),0,0,0,0,0,0,0,R10(i)];
%      result=Countcro(F);
%      loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%      if loss<0.00000005
%          form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=4 %d\n';
%          fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
%      end
% end
% for i=1:times
%      F=[0,0,R3(i),0,0,0,0,0,R9(i),0];
%      result=Countcro(F);
%      loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%      if loss<0.00000005
%          form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=5 %d\n';
%          fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
%      end
% end
% for i=1:times
%      F=[0,0,R3(i),0,0,0,0,0,0,R10(i)];
%      result=Countcro(F);
%      loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%      if loss<0.00000005
%          form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=6 %d\n';
%          fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
%      end
% end
for i=1:times
     F=[R1(i),R2(i),R3(i),0,0,0,0,0,0,0];
     result=Countcro(F);
     loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
     if loss<0.00000005
         form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=[123] %d\n';
         fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
     end
end
for i=1:times
     F=[R1(i),R2(i),0,0,0,0,0,0,R9(i),0];
     result=Countcro(F);
     loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
     if loss<0.00000005
         form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=[129] %d\n';
         fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
     end
end
for i=1:times
     F=[R1(i),R2(i),0,0,0,0,0,0,0,R10(i)];
     result=Countcro(F);
     loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
     if loss<0.00000005
         form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=[120] %d\n';
         fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
     end
end
for i=1:times
     F=[0,R2(i),R3(i),0,0,0,0,0,R9(i),0];
     result=Countcro(F);
     loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
     if loss<0.00000005
         form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=[239] %d\n';
         fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
     end
end
for i=1:times
     F=[0,R2(i),R3(i),0,0,0,0,0,0,R10(i)];
     result=Countcro(F);
     loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
     if loss<0.00000005
         form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=[230] %d\n';
         fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
     end
end
for i=1:times
     F=[R1(i),0,R3(i),0,0,0,0,0,R9(i),0];
     result=Countcro(F);
     loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
     if loss<0.00000005
         form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=[139] %d\n';
         fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(9),result(1),result(2),result(3),loss,i);
     end
end
for i=1:times
     F=[R1(i),0,R3(i),0,0,0,0,0,0,R10(i)];
     result=Countcro(F);
     loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
     if loss<0.00000005
         form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=[130] %d\n';
         fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
     end
end
for i=1:times
     F=[0,R2(i),0,0,0,0,0,0,R9(i),R10(i)];
     result=Countcro(F);
     loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
     if loss<0.00000005
         form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=[290] %d\n';
         fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
     end
end
for i=1:times
     F=[0,0,R3(i),0,0,0,0,0,R9(i),R10(i)];
     result=Countcro(F);
     loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
     if loss<0.00000005
         form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=[390] %d\n';
         fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
     end
end
for i=1:times
     F=[R1(i),0,0,0,0,0,0,0,R9(i),R10(i)];
     result=Countcro(F);
     loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
     if loss<0.00000005
         form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=[190] %d\n';
         fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
     end
end
% for i=1:times
%      F=[0,R2(i),R3(i),0,0,0,0,0,R9(i),R10(i)];
%      result=Countcro(F);
%      loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%      if loss<0.00000005
%          form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=17 %d\n';
%          fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
%      end
% end
% for i=1:times
%      F=[R1(i),0,R3(i),0,0,0,0,0,R9(i),R10(i)];
%      result=Countcro(F);
%      loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%      if loss<0.00000005
%          form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=18 %d\n';
%          fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
%      end
% end
% for i=1:times
%      F=[R1(i),R2(i),0,0,0,0,0,0,R9(i),R10(i)];
%      result=Countcro(F);
%      loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%      if loss<0.00000005
%          form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=19 %d\n';
%          fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
%      end
% end
% for i=1:times
%      F=[R1(i),R2(i),R3(i),0,0,0,0,0,0,R10(i)];
%      result=Countcro(F);
%      loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%      if loss<0.00000005
%          form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=20 %d\n';
%          fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
%      end
% end
% for i=1:times
%      F=[R1(i),R2(i),R3(i),0,0,0,0,0,R9(i),0];
%      result=Countcro(F);
%      loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%      if loss<0.0000000001
%          form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=21 %d\n';
%          fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
%      end
% end
% for i=1:times
%      F=[R1(i),R2(i),R3(i),0,0,0,0,0,R9(i),R10(i)];
%      result=Countcro(F);
%      loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%      if loss<0.000000005
%          form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=22 %d\n';
%          fprintf(form,F(1),F(2),F(3),F(4),F(5),F(6),F(7),F(8),F(9),F(10),result(1),result(2),result(3),loss,i);
%      end
% end

% LOSS=100;
% for i=1:times
%     F=[R1(i),R2(i),R3(i),R4(i),R5(i),R6(i),R7(i),R8(i),R9(i),R10(i)];
%     result=Countcro(F);
%     loss=power(result(1)-0.1442,2)+power(result(2),2)+power(result(3),2);
%     if loss<LOSS
%         LOSS=loss;
%         form='force=(%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f), vector=(%f,%f,%f), loss=%f, times=%d\n';
%         fprintf(form,R1(i),R2(i),R3(i),R4(i),R5(i),R6(i),R7(i),R8(i),R9(i),R10(i),result(1),result(2),result(3),loss,i);
%     end
% end


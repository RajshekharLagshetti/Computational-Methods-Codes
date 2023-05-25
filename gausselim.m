% Gauss-elimination method
clc
clear all
A=input('Enter coefficient matrix: ');
B=input('Enter right hand vector: ');
N=input('Enter order of coefficient matrix: ');
C=[A,B];
for i=2:N
    for j=i:N
        if (C(i-1,i-1)<=0.01)
            C(i-1,:)=C(i-1,:)+C(i,:);
            C(i,:)=C(i-1,:)-C(i,:);
            C(i-1,:)=C(i-1,:)-C(i,:);
        end
            k=C(j,i-1)/C(i-1,i-1);
            C(j,:)=C(j,:)-k*C(i-1,:);
    end
end
% Back substitution
x=zeros(N,1);
for i=N:-1:1
  x(i)=(C(i,end)-C(i,i+1:N)*x(i+1:N))/C(i,i);
end
% Gauss Seidel Method
clc
clear all
A=[4,1,3;1,5,1;2,-1,8];
B=[17;14;12];
N=length(A);
C=[A,B];
% Initializing
x=zeros(3,1);
err=zeros(N,1);
maxi=50;
tolx=1e-6;

%% Gauss Seidel iteration
for i=1:maxi
    for j=1:N
        xold=x(j);
        num=C(j,end)-C(j,1:j-1)*x(1:j-1)-C(j,j+1:N)*x(j+1:N);
        x(j)=num/C(j,j);
        err(j)=abs(x(j)-xold);
    end
    if(max(tolx)>tolx)
        break
    end
        
end

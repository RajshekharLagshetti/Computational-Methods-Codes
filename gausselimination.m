clear all
clc



%% solving system of linear equation by Gauss Elimination
A=[0,1,1;3,2,3;1,4,9];
B=[10;18;16];
N=sum(size(A))/2;
for j=2:N;
    for i=j:N
        if abs(A(j-1,j-1))>0.001
        B(i,1)=B(i,1)-(B(j-1,1).*(A(i,j-1)./ A(j-1,j-1)));
        A(i,1:N)= A(i,1:N)-(A(j-1,1:N).*(A(i,j-1)./ A(j-1,j-1)));
         else
            %% swapping
            [val,loc] = max(A(j-1:N,j)); 
             B([loc,j-1],:)=B([j-1,loc],:);
             A([loc, j-1], :) = A([j-1, loc], :);
             B(i,1)=B(i,1)-(B(j-1,1).*(A(i,j-1)./ A(j-1,j-1)));
             A(i,1:N)= A(i,1:N)-(A(j-1,1:N).*(A(i,j-1)./ A(j-1,j-1)));
    end
    end
end
  
Z=zeros(N,1);
 k=N;
for k=N:-1:1
     Z(k,1)=(B(k,1)-(A(k,1:N)*Z(1:N,1)))/A(k,k);
     
end


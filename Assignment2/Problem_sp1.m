%Problem sp1
%Doolittle Factorization

A=[ 1,2,-1; 2,2,3; -1,-3,0; ]; %the given 3*3 matrix 
L=zeros(3); %The corresponding lower triangular matrix(Initially set to zero)
U=zeros(3); %The corresponding upper triangular matrix(Initially set to zero)
for i = 1 : 3
    for j = i : 3 %For upper triangular part 
        sum=0;
        %For each i=0,1...n-1
        %U(i,k)=A(i,k)-Σ(j=0 to i) [L(i,j),U(j,k)] for k=i,i+1...n-1
        %produces the kth row of U
        for k=1 : i 
            sum=sum+L(i,k)*U(k,j); %Summation of L(i, j) * U(j, k)
        end
        U(i,j)=A(i,j)-sum; %Evaluating U(i, j) 
    end
    
    for j = 1 : 3 %For lower triangular part
        if( i == j)
            L(i,i)=1; %Diagonal element is 1
        else
            sum=0;
            %For each i=0,1...n-1
            %l(i,i)=1 & L(i,k)=[A(i,k)-Σ(j=0 to i) [L(i,j),U(j,k)]] /U(k,k) for k=i,i+1...n-1
            %produces the kth row of L
            for k=1 : i
                sum=sum+L(j,k)*U(k,i); %Summation of L(j,k)*U(k,i)
            end
            L(j,i)=(A(j,i)-sum)/(U(i,i)); %Evaluating L(j, i) 
        end
       
    end
end
fprintf("Doolittle Factorization of the matrix\n") 
%Getting all the final outputs (i.e. A,L,U,W(for checking purpose))
A
L 
U
W=L*U
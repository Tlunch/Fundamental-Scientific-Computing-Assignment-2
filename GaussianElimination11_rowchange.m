n = 2;                         % the number of equations    
A=[10^(-20) 1; 1 1];     %define the 3x3 matrix A
b=[2;1];                     %define the column vector b
B = [A b]                    % 3x4 matrix                           
L = eye(2);                     % 3x3 identity matrix
P=eye(n);                       %3x3 matrix for permutation matrix P

for k=1:n-1                    % step number (and row to be multipied)
    display('Step')
    k
    for i=k+1:n                % row number to be changed
        if(B(k,k)==0)          %pivot element is equal to zero
            for r=i:n          %search nonzero pivot element
                if(B(r,k)~=0) %found nonzero pivot element
   %interchange row k (B(k,:)) and row r (B(r,:)) of B
    B([k,r],:)=B([r,k],:);
   %interchange row k (P(k,:)) and row r (P(r,:)) of P
    P([k,r],:)=P([r,k],:);                          
   %interchange L(k,1:k-1) and L(r,1:k-1) of L
    L([k,r],1:k-1)=L([r,k],1:k-1);
                end  
            end
        end
        B
        i
        L(i,k)=B(i,k)/B(k,k);  % this is the multiplier 
        display('The multiplier is')
        L(i,k)
        B(i,:)= B(i,:)-L(i,k)*B(k,:)  % row operation 
    end
    display('Matrix after the k-th elimination step is ')
    B
end

display('Upper triangular matrix U= ')
U=B(:,1:n) %Upper triangular matrix U

display('Lower triangular matrix L= ')
L %Lower triangular matrix L

display('LU=')
L*U

display('Permutation matrix P')
P %Permutation matrix P

display('LU=')
L*U

display('PA=')
P*A
B
%perform backward substitution
x=B(:,n+1);
x(n)=B(n,n+1)/B(n,n)
for i=n-1:-1:1
    x(i)=(B(i,n+1)-B(i,i+1:n)*x(i+1:n))/B(i,i);
end
%solution
display('The computed solution is x=')
x
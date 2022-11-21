n = 4;
A = [1 0 0 0; 4 2 0 0; 2 1 2 0; 7 5 6 2];
b = [2;3;1;-2];
x = b;%Initial values till here
x(1) = b(1,1)/A(1,1);%manually calculating the first value of x vector
for i=2:n %using for loop to itterate through
    x(i) = (b(i,1) - A(i,1:i-1)*x(1:i-1))/A(i,i);%takeing the sum of the so far calculated values off the RHS of the equasion and dividing by  the coeficcient of the x element that is being calculated
end
x %print x to console

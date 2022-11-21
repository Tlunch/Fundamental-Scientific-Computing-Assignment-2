n = 100; %defining initial conditions and formula
a = -4;
b = -1;
f = @(x) (2+ x^3)* sin(exp(x));
tol = 10^(-6);
err = 1;

while err > tol
    h = (b-a)/n; %calculating h using given formula
    xi = a:h:b; %creating a vector of evenly spaced points from x0 to xn
    fi(1,i) = h*f((xi(i)+xi(i+1))/2); %using the formula to work out each midpoint approximation and saving to vector fi
    Int1 = abs(sum(fi)); %summing fi and taking its absolute value to give an integral approximation
    n2


end
fprintf('The Integral is %4.4f \n', Int) %printing the integral to console

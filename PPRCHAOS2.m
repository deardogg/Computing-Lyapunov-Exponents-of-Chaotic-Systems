x = rand;
r = linspace(0, 4, 401);
xvector(1:401) = x;
sum= 0 * r;
for n = 1:1000000 %number of iterations found to be sufficient for accuracy to 4.d.p.
    sum = sum + log(abs(r.*(1 - 2*xvector)));
    xvector = r.*(xvector.*(1 - xvector)); %loop structured so sum calculated for i = 0 to n-1
end
lambda = sum/1000000;
plot(r, lambda, Color = 'black')
xlabel('r ∈ (0,4]') 
ylabel('Lyapunov Exponent λ(x0) : x0 ∈ (0,1)')

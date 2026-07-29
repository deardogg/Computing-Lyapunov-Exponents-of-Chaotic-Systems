x=rand;
r=3.5;
sum=0; 
for n = 1:1000000 %number of iterations found to be sufficient for accuracy to 4.d.p.
    sum=sum+log(abs(r*(1-2*x))); 
    x=r*x*(1-x); %loop structured so sum calculated for i = 0 to n-1
end
lambda=sum/1000000;
disp(lambda)

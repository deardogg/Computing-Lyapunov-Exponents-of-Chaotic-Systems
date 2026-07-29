xvector1=zeros(1,101);
xvector1(1)=rand;
r1=2;

xvector2=zeros(1,101);
xvector2(1)=rand;
r2=3.8;

for i = 1:100
    xvector1(i+1)=r1*xvector1(i)*(1-xvector1(i));
    xvector2(i+1)=r2*xvector2(i)*(1-xvector2(i));
end

timeindex=linspace(0,100,101);

hold on
plot(timeindex,xvector1,Color='red')
plot(timeindex,xvector2,Color='blue')
xlim([0,100])
xlabel('i = time index')
ylabel('xi')
legend('r=2','r=3.8')
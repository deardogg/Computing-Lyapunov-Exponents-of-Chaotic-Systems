delta=0.01;

xvector1=zeros(1,101);
xvector1(1)=rand;
xvector1p=zeros(1,101);
xvector1p(1)=xvector1(1)+delta;
r1=2;
xvector2=zeros(1,101);
xvector2(1)=rand;
xvector2p=zeros(1,101);
xvector2p(1)=xvector2(1)+delta;
r2=3.8;
for i = 1:100
    xvector1(i+1)=r1*xvector1(i)*(1-xvector1(i));
    xvector1p(i+1)=r1*xvector1p(i)*(1-xvector1p(i));
    xvector2(i+1)=r2*xvector2(i)*(1-xvector2(i));
    xvector2p(i+1)=r2*xvector2p(i)*(1-xvector2p(i));
end

timeindex=linspace(0,100,101);

hold on
plot(timeindex,xvector1,Color='red')
plot(timeindex,xvector1p,Color='red',LineStyle='--')
plot(timeindex,xvector2,Color='blue')
plot(timeindex,xvector2p,Color='blue',LineStyle='--')
xlim([0,100])
xlabel('i = time index')
ylabel('xi')
legend('r=2','r=2 & xo perturbed','r=3.8','r=3.8 & xo perturbed')
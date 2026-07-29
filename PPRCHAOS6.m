x0=[rand,rand,rand]; %step 1

[x,y,z]=iteration(x0(1),x0(2),x0(3),10000); %step 2, using iteration function
xa=[x,y,z];

d0=10^-8;
xb=[xa(1)+d0,xa(2),xa(3)]; %step 3, choosing to perturb in x-axis

p=zeros(1,10000); %vector containing |d1/d0| values
for i = 1:10000 %step, 4-6 repeated

    [x1,y1,z1]=iteration(xa(1),xa(2),xa(3),100);
    xa1=[x1,y1,z1];
    [x2,y2,z2]=iteration(xb(1),xb(2),xb(3),100);
    xb1=[x2,y2,z2];
    d1=norm(xa1-xb1);

    p(i)=log(abs(d1/d0));

    xa=xa1;
    xb=[xa1(1)+d0*(xb1(1)-xa1(1))/d1,xa1(2)+d0*(xb1(2)-xa1(2))/d1,xa1(3)+d0*(xb1(3)-xa1(3))/d1];

end

disp(mean(p)) %estimate of largest lyapunov exponent
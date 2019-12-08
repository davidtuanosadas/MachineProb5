n=(0:199);
x=input('input x:');
y=zeros(size(x));
for i=1:length(n)
    if n(i)==0
        y(i)=1.5*x(i)+2*x(i+1)-0.5*x(i+2);
    elseif n(i)<199 && n(i)>0
        y(i)=0.5*x(i+1)-0.5*x(i-1);
    else
        y(i)=1.5*x(i)-2*x(i-1)+0.5*x(i-2);
       
           
    end
end
plot(n,x,'-');
hold on;
plot(n,y,'m-');
hold off;
title('x(n) and y(n)')
xlabel('n');
legend('x','y');




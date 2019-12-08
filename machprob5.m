function y=prob2()
n=(0:199);
x=sin((3*pi/100)*n);
y=zeros(size(x));
for i=1:length(n)
    switch n(i)
        case 0
        y(i)= 1.5*x(i)+2*x(i+1)-0.5*x(i+2);
        case n(i)<199 && n(i)>0
        y(i)= 0.5*x(i+1)-0.5*x(i-1);
        otherwise
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




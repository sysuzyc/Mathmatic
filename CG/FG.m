function [k,x_final] = FG(A,b,dimention)

x0 = zeros(dimention,1);
x(:,1) = x0;
r(:,1) = b - A*x(:,1);
k = 1;
%z最速下降法法核心算法
model(k) = 100; 

while(model(k) > 10^-3)
    k = k + 1
    alfa(:,k-1) = r(:,k-1)' * r(:,k-1) / (r(:,k-1)' * A * r(:,k-1));
    x(:,k) = x(:,k-1) + alfa(:,k-1) * r(:,k-1);
    r(:,k) = b - A * x(:,k)
    model(k) = norm(r(:,k));
end
x_final = x(:,k);
end
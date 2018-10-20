function [k,x_final] = CG(A,b,dimention)

% 初始化数据
x0 = zeros(dimention,1);
x(:,1) = x0;
r(:,1) = b - A*x(:,1);
k = 1;
%共轭梯度法核心算法
model(k) = 100; 
while(model(k) > 10^-9)
    k = k + 1
    if k == 2
        p(:,1) = r(:,1);
    else
        belta(:,k-2) = (r(:,k-1)' * r(:,k-1)) / (r(:,k-2)' * r(:,k-2));
        p(:,k-1) = r(:,k-1) + belta(:,k-2) * p(:,k-2);
    end
    alfa(:,k-1) = (r(:,k-1)' * r(:,k-1)) / (p(:,k-1)' * A * p(:,k-1));
    x(:,k) = x(:,k-1) + alfa(:,k-1) * p(:,k-1);
    r(:,k) = r(:,k-1) - alfa(:,k-1) * A * p(:,k-1);
    model(k) = norm(r(:,k));
end
x_final = x(:,k);

end

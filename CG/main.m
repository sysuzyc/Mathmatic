%共轭梯度法
% 构造对称正定矩阵
% clc;
% clear;
% dimention = 100;
% for i = 1:dimention
%     for j = i:dimention
%         temp = rand;
%         A(i,j) = round(10 * temp);
%         A(j,i) = A(i,j);
%     end
% end
% for i = 1 : dimention
%     A(i,i) = 100;
% end
% 
% %计算特征值，验证构造的矩阵是否正定
% [V,D] = eig(A);
% Matrix_valid = 1;
% for i = 1:dimention
%     if (D(i,i) < 0) 
%         Matrix_valid = 0;
%     end
% end
% %构造b，需要输入的元素，(A,b)构建完成
% for i = 1:dimention
%     b(i,1) = 10*rand;
% end

load('A.mat');
load('b.mat');
%[k,x_final] = CG(A,b,dimention);
[k,x_final] = FG(A,b,dimention);

error = norm(b - A * x_final);
function Loss = Linearloss2(X,Y)
% Exercisse7.d, part 1
%  Use a linear design with an offset and save the loss

X = Basis(X);

num = size(Xm,1);
Xb = [Xm,ones(num,1)];
w = (Xb'*Xb) \ (Xb'*Y);

save Weights w
Loss = sum((Y-Xb*w).^2)/num;
% save LossSecondExtrainloss Loss;
end

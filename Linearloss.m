function Loss = Linearloss(X,Y)
% Exercisse7.d, part 1
%  Use a linear design with an offset and save the loss
num = size(X,1);
X = [X,ones(num,1)];
w = (X'*X) \ (X'*Y);
Loss = sum((Y-X*w).^2)/num;
save LossSecondExtrainloss Loss;
end







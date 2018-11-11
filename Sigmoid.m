% Sigmoid function

function y = Sigmoid(x)
	y = ones(size(x)) ./ (ones(size(x)) + exp(-x));
end
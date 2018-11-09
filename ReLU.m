% ReLU function

function y = ReLU(x)
	mask = (x >= 0);
	y = x .* mask;
end
% Train function of 3-Layer FNN

function [W1, W2] = Train2(x, y)
	nSamples = size(x, 2);

	xB = horzcat(x, ones(nSamples, 1));
end
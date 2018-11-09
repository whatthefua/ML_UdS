% Prediction function of 3-Layer FNN

function y = Prediction2(x, W1, W2)
	nSamples = size(x, 2);

	xB = horzcat(x, ones(nSamples, 1));

	hidden1 = ReLU(xB * W1);
	hidden1B = horzcat(hidden1, ones(nSamples, 1));

	y = ReLU(hidden1B * W2);
end
% Prediction function of 3-Layer FNN

% Call Prediction2(Basis(Xtrain)); to see loss against training data
% Comment lines 19 - 22 to leave out loss
% Returns predictions

function y = Prediction2(x)
    % Import weights
    load('Weights.mat');

	nSamples = size(x, 1);

	xB = horzcat(x, ones(nSamples, 1));

	hidden1 = Sigmoid(xB * W1);
	hidden1B = horzcat(hidden1, ones(nSamples, 1));

	y = Sigmoid(hidden1B * W2);
    
    % Import training labels to calculate loss
    load('Part2-TrainingData.mat');
    
    Loss = sum((Ytrain - y) .^ 2) / nSamples;
    disp([ 'Loss = ', num2str(Loss) ]);
end
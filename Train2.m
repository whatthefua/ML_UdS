% Train function of 3-Layer FNN

function [W1, W2] = Train2(x, y_true)
    nFeatures = size(x, 2);
	nSamples = size(x, 1);
    
    HiddenSize = 5;
    alpha = 0.02;

	xB = horzcat(x, ones(nSamples, 1));
    
    W1 = randn(nFeatures + 1, HiddenSize) ./ 20;
    W2 = randn(HiddenSize + 1, 1) ./ 20;
    
    for epoch = 1:400
        for sampleCnt = 1:2000
            idx = randi([1 nSamples]);
            sample = xB(idx, :);
            sample_true = y_true(idx, :);
            
            hidden1 = Sigmoid(sample * W1);
            hidden1B = horzcat(hidden1, ones(1, 1));

            y_pred = Sigmoid(hidden1B * W2);

            d_W2 = hidden1B * (2 .* (sample_true - y_pred) .* Sigmoid_Deriv(y_pred));
            d_W1 = ((((2 .* (sample_true - y_pred) .* Sigmoid_Deriv(y_pred)) * W2) .* (Sigmoid_Deriv(hidden1B)')) * sample)';
            
            W1 = W1 + alpha .* d_W1(:, 1: HiddenSize);
            W2 = W2 + alpha .* d_W2';
        end
        
        alpha = alpha * 0.997;
    end
    
    save Weights W1 W2;
    
    Prediction2(x);
end
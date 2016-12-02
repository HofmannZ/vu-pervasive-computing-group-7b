img = readimage(trainingSet, 1);
featureVector = encode(bag, img);

% Plot the histogram of visual word occurrences
figure;
bar(featureVector);
title('Visual word occurrences');
xlabel('Visual word index');
ylabel('Frequency of occurrence');
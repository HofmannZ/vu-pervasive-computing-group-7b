path = fullfile('./trainingData', 'previousImage', 'previous110.png');
img = imread(path);
[labelIdx, scores] = predict(classifier, img);
 
% Display the string label
classifier.Labels(labelIdx)

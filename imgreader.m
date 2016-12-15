path = fullfile('./DataSet4.0.0', 'A', 'bfritza1.pgm');
img = imread(path);
[labelIdx, scores] = predict(classifier, img);
 
% Display the string label
classifier.Labels(labelIdx)

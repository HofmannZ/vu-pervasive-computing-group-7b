clear cam;
cam = webcam(1);
preview(cam);
pause(5);

snap = snapshot(cam);
pause(1);
fname = ('stream.bmp');
imwrite(snap, fullfile('./streamData', fname));
imshow(snap);


path = fullfile('./streamData', 'stream.bmp');
img = imread(path);
[labelIdx, scores] = predict(classifier, img);

% Display the string label
classifier.Labels(labelIdx)

clear cam

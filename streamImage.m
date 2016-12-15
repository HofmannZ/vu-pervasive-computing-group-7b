% Sets up the camara.
clear cam;
cam = webcam(1);
preview(cam);
pause(5);

while (true)
    % Takes a picture of the gesture.
    snap = snapshot(cam);
    
    % Waits a bit to proces the picture.
    pause(5);
    
    % Writes the picture as an grey scale image.
    filepath = fullfile('./StreamData', 'stream.bmp');
    greyscaleImage = rgb2gray(snap);
    imwrite(greyscaleImage, filepath);
    
    % Classifies the image into an categhory and give a probebility score.
    [labelIndex, score] = predict(classifier, imread(filepath));
    
    % displayes the categhory and the probebility.
    disp(classifier.Labels(labelIndex));
    disp(score);
end
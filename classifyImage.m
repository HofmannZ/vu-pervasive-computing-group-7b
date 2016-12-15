% An example funtion to control the music.
function classifyImage (classifier, image)
    % Predicts the image catagory and sore.
    [labelIndex, score] = predict(classifier, imread(image));
    
    % Get the actual label from the label index.
    prediction = classifier.Labels(labelIndex);
    
    % Does an action based on the class. ( in this case we show images, but
    % could just as well fire other commands.
    if (prediction{1} == 'A')
        imshow('.Controls/play.jpg');
    else if (prediction{1} == 'B')
        imshow('.Controls/pause.jpg');
    else if (prediction{1} == 'D')
        imshow('.Controls/next.jpg');
    else if (prediction{1} == 'H')
        imshow('.Controls/prev.jpg');
    else if (prediction{1} == 'L')
        imshow('.Controls/up.jpg');
    else if (prediction{1} == 'V')
        imshow('.Controls/down.jpg');
    end
end
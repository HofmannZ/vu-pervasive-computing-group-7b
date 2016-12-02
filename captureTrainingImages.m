function captureTrainingImages(folderName, objectName, startAmount ,amount, delay)
    cam = webcam(1);
    pause(5);
    
    if exist(sprintf('./trainingData/%s', folderName), 'dir') == 0
        mkdir('./trainingData', folderName);
    end
    
    for i = startAmount:(startAmount + amount - 1)
        snap = snapshot(cam);
        imshow(snap);
        fname = sprintf('%s%d.png', objectName, i);
        imwrite(snap, fullfile('./trainingData', folderName, fname));
        pause(delay);
    end
    
    clear cam;
end
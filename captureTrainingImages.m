% Function that captures training images.
function captureTrainingImages(version, cat, startAmount, amount, delay)
    % Setups the camara
    cam = webcam(1);
    pause(5);
    
    % Create a folder if it does not yet exsits.
    if exist(sprintf('./DataSet%s/%s', version, cat), 'dir') == 0
        mkdir('./DataSet%s/%s', version, cat);
    end
    
    % Take an N amount of pictures.
    for i = startAmount:(startAmount + amount - 1)
        snap = snapshot(cam);
        imshow(snap);
        fname = sprintf('%s%d.png', cat, i);
        imwrite(snap, fullfile('./DataSet%s/%s', version, cat, fname));
        pause(delay);
    end
    
    % Clear the camera for the next use.
    clear cam;
end
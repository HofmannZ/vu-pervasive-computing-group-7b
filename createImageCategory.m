imds = imageDatastore(fullfile('./trainingData'), ...
    'IncludeSubfolders', true, 'FileExtensions', '.pgm', ...
    'LabelSource', 'foldernames');

[trainingSet, testSet] = splitEachLabel(imds, 0.7, 'randomize');

bag = bagOfFeatures(trainingSet);
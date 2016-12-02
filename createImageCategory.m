imds = imageDatastore(fullfile('./trainingData'), ...
    'IncludeSubfolders', true, 'FileExtensions', '.png', ...
    'LabelSource', 'foldernames');

[ trainingSet, testSet ] = splitEachLabel(imds, 0.7, 'randomize');

bag = bagOfFeatures(trainingSet);
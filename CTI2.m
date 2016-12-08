imds = imageDatastore(fullfile('./trainingData/downImage'), ...
    'IncludeSubfolders', false, 'FileExtensions', '.png', ...
    'LabelSource', 'foldernames');

[ trainingSet, testSet ] = splitEachLabel(imds, 0.7, 'randomize');

bag = bagOfFeatures(trainingSet);
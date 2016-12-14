imds = imageDatastore(fullfile('./trainingData'), ...
    'IncludeSubfolders', true, 'FileExtensions', '.pgm', ...
    'LabelSource', 'foldernames');

[ trainingSet, testSet ] = splitEachLabel(imds, 0.8, 'randomize');

bag = bagOfFeatures(trainingSet);
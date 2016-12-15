% Creates an image datastore with all te images based and adds the folder
% name a categhory.
imds = imageDatastore(fullfile('./DataSet4.0.0'), ...
    'IncludeSubfolders', true, 'FileExtensions', '.pgm', ...
    'LabelSource', 'foldernames');

% Randomizes the datastore and puts 80% into the training set and 20% into
% the test set.
[ trainingSet, testSet ] = splitEachLabel(imds, 0.8, 'randomize');

% Creates a bag of features based on the training set.
bag = bagOfFeatures(trainingSet);
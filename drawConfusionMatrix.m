function confusionMatrix =  drawConfusionMatrix (classifier, imageDataStore)
    confusionMatrix = evaluate(classifier, imageDataStore);
end
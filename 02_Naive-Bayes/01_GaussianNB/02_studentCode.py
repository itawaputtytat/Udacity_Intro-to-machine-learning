from class_vis import prettyPicture
from prep_terrain_data import makeTerrainData
from classify import NBAccuracy

import matplotlib.pyplot as plt
import numpy as np
import pylab as pl


features_train, labels_train, features_test, labels_test = makeTerrainData()

def submitAccuracy():
    accuracy = NBAccuracy(features_train, labels_train, features_test, labels_test)
    return accuracy

## Check answer
submitAccuracy()

## Method 2:
print ( float(sum(labels_test == pred)) / float(len(labels_test)) )

## Alternative method
print clf.score(features_test, labels_test)
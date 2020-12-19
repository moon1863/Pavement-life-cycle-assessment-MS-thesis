# -*- coding: utf-8 -*-
"""
Created on Tue Mar  3 15:10:59 2020

@author: Windows
"""
#importing libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from IPython.display import Image  
from sklearn import tree
import pydotplus

#importing the datatset
dataset=pd.read_csv('MAINTENANCE_PHASE.csv')
X = dataset.iloc[:,:-1].values
y = dataset.iloc[:,10].values

#encoding categorical data
from sklearn.preprocessing import LabelEncoder, OneHotEncoder
labelencoder_X = LabelEncoder()
X[:,8]=labelencoder_X.fit_transform(X[:,8]) #different label assigned 
onehotencoder = OneHotEncoder(categorical_features = [8])
X = onehotencoder.fit_transform(X).toarray()  #different column for diff. label 
                                             #and bin.val inject & make numarry
                                             
#splittting the dataset into the Training set and Test set
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.2, random_state = 0)

#fitting decisiontree regression to the dataset
from sklearn.tree import DecisionTreeRegressor
regressor = DecisionTreeRegressor(min_samples_leaf=5,
                                  random_state = 0)
regressor.fit(X_train,y_train)

regressor.feature_importances_
regressor.get_n_leaves()

#create DOT data
dot_data = tree.export_graphviz(regressor, out_file=None)

#draw graph
graph = pydotplus.graph_from_dot_data(dot_data)  

#show graph
Image(graph.create_png())

#create PDF
graph.write_pdf("MAINTENACEPHASE.pdf")

#create PNG
graph.write_png("MAINTENACEPHASE.png")
#predict
predictedval=regressor.predict(X_test)

#find_accuracy
acc_score = regressor.score(X_test,y_test)*100




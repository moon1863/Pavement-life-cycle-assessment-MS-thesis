# -*- coding: utf-8 -*-
"""
Created on Tue Mar  3 13:19:42 2020

@author: Windows
"""
#importing libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

#Importing the datatset
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

#fitting multiple linear regression with train data
from sklearn.linear_model import LinearRegression
regressor = LinearRegression()
regressor.fit(X_train, y_train)

#predict values
y_predict = regressor.predict(X_test)

#OLS
import statsmodels.regression.linear_model as sm
X = np.append(arr= np.ones((47,1)).astype(int), values = X, axis =1)
X_opt= X[:,:]
regressor_OLS = sm.OLS(endog= y, exog = X_opt).fit()
regressor_OLS.summary()



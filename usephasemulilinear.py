# -*- coding: utf-8 -*-
"""
Created on Mon Mar  2 14:54:29 2020

@author: Windows
"""
#importing libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

#Importing the datatset
dataset=pd.read_csv('USE_PHASE_READY_FOR_MODEL.csv')
X = dataset.iloc[:,:-1].values
y = dataset.iloc[:,3].values


#Splittting the dataset into the Training set and Test set
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.2, random_state = 0)

#fitting multiple linear regression with train data
from sklearn.linear_model import LinearRegression
regressor = LinearRegression()
regressor.fit(X_train, y_train)

#predict values
y_predict = regressor.predict(X_test)

#backward elimination
import statsmodels.regression.linear_model as sm
X = np.append(arr= np.ones((1175,1)).astype(int), values = X, axis =1)
X_opt= X[:,[0, 1, 2,3]]
regressor_OLS = sm.OLS(endog= y, exog = X_opt).fit()
regressor_OLS.summary()

#visualization
plt.plot(X_test,y_predict)
plt.show()

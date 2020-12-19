# -*- coding: utf-8 -*-
"""
Created on Mon Feb 10 12:28:12 2020

@author: Windows
"""
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

#Importing the datatset
dataset=pd.read_csv('INIT_CONSTR_6_Granular_layer_prepared.csv')
X = dataset.iloc[:,:-1].values
y = dataset.iloc[:,5].values

##Encoding categorical data
from sklearn.preprocessing import LabelEncoder, OneHotEncoder
labelencoder_X = LabelEncoder()
X[:,0]=labelencoder_X.fit_transform(X[:,0]) #different label assigned 
onehotencoder = OneHotEncoder(categorical_features = [0])
X = onehotencoder.fit_transform(X).toarray()  #different column for diff. label 
                                             #and bin.val inject & make numarry

#Splittting the dataset into the Training set and Test set
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.2, random_state = 0)

#feature scaling
#from sklearn.preprocessing import StandardScaler
#sc_X = StandardScaler()
#X_train = sc_X.fit_transform(X_train)
#X_test = sc_X.transform(X_test)


#fitting multiple linear regression with train data
from sklearn.linear_model import LinearRegression
regressor = LinearRegression()
regressor.fit(X_train, y_train)

#predict values
y_predict = regressor.predict(X_test)

#backward elimination
import statsmodels.regression.linear_model as sm
X = np.append(arr= np.ones((181,1)).astype(int), values = X, axis =1)
X_opt= X[:,[0, 1, 2, 3, 4, 5, 6]]
regressor_OLS = sm.OLS(endog= y, exog = X_opt).fit()
regressor_OLS.summary()

#visualization
plt.plot(X_test,y_predict)
plt.show()

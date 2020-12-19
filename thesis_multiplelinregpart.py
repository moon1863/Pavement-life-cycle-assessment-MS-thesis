# -*- coding: utf-8 -*-
"""
Created on Thu Feb  6 10:17:52 2020

@author: Windows
"""
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

#Importing the datatset
dataset=pd.read_csv('Initial_construction_asphalt_layer_final_version.csv')
X = dataset.iloc[:,:-1].values
y = dataset.iloc[:,9].values

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
X = np.append(arr= np.ones((197,1)).astype(int), values = X, axis =1)
X_opt= X[:,[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]]
regressor_OLS = sm.OLS(endog= y, exog = X_opt).fit()
regressor_OLS.summary()

#remove x8 which is column no 2
import statsmodels.regression.linear_model as sm
X = np.append(arr= np.ones((197,1)).astype(int), values = X, axis =1)
X_opt= X[:,[0, 1, 2, 3, 4, 5, 6, 7, 9, 10]]
regressor_OLS = sm.OLS(endog= y, exog = X_opt).fit()
regressor_OLS.summary()

y_predict2 = regressor_OLS.predict(X_test)

#visualization
plt.plot(X_test,y_predict,color='red')
plt.show()

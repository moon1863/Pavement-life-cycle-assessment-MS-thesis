# -*- coding: utf-8 -*-
"""
Created on Mon Feb 10 21:18:06 2020

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



#fitting polynomial regression with train data
from sklearn.preprocessing import PolynomialFeatures
poly_reg= PolynomialFeatures(degree=2)
X_poly = poly_reg.fit_transform(X_train)

from sklearn.linear_model import LinearRegression
lin_reg2 = LinearRegression()
lin_reg2.fit(X_poly,y_train)



#predict values
y_predict = lin_reg2.predict(poly_reg.fit_transform(X_test))

#backward elimination
import statsmodels.regression.linear_model as sm

X_opt= X_poly[:,:]
regressor_OLS = sm.OLS(endog= y_train, exog = X_opt).fit()
regressor_OLS.summary()

#iteration1
import statsmodels.regression.linear_model as sm

p=X[:,(2,4)] #randomly selection of column
X_opt= X_poly[:,(0,3,13,22,31,32,33,34,35,36,37)]
regressor_OLS = sm.OLS(endog= y_train, exog = X_opt).fit()
regressor_OLS.summary()

y_predict2 = regressor_OLS.predict(poly_reg.fit_transform(X_test))


#iteration2
import statsmodels.regression.linear_model as sm

X_opt= X_poly[:,(0,1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,24,27,28
                 ,29,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49
                 ,50,51,52,53,54,55,56,57,58,59,60)]
regressor_OLS = sm.OLS(endog= y_train, exog = X_opt).fit()
regressor_OLS.summary()

#iteration3
import statsmodels.regression.linear_model as sm

X_opt= X_poly[:,(0,1,4,5,6,7,8,11,14,15,16,17,18,20
                 ,31,32,36,37,38,39,40,41,42,43,44,45,46
                 ,50,51,52,53,54,55,56,57)]
regressor_OLS = sm.OLS(endog= y_train, exog = X_opt).fit()
regressor_OLS.summary()

#iteration4
import statsmodels.regression.linear_model as sm

X_opt= X_poly[:,(0,1,5,6,7,8,11,14,15,16,17
                 ,31,38,39,40,41,42,43,44,45,46
                 ,50,51,52,53,54,56,57)]
regressor_OLS = sm.OLS(endog= y_train, exog = X_opt).fit()
regressor_OLS.summary()

#p value increase after iteration 4

#iteration5
import statsmodels.regression.linear_model as sm

X_opt= X_poly[:,(0,1,5,7,8,11,14,15,16,17
                 ,31,38,39,40,41,42,43,45,46
                 ,50,51,52,53,56,57)]
regressor_OLS = sm.OLS(endog= y_train, exog = X_opt).fit()
regressor_OLS.summary()

#iteration6
import statsmodels.regression.linear_model as sm

X_opt= X_poly[:,(0,1,8,11,14,15,16,17
                 ,41,45,46
                 ,50,51,52,53,56,57)]
regressor_OLS = sm.OLS(endog= y_train, exog = X_opt).fit()
regressor_OLS.summary()

#iteration7
import statsmodels.regression.linear_model as sm

X_opt= X_poly[:,(0,1,8,11,14,15,16,17
                 ,41,45,46
                 ,50,51,52,53,56,57)]
regressor_OLS = sm.OLS(endog= y_train, exog = X_opt).fit()
regressor_OLS.summary()


y_predict2 = regressor_OLS.predict(X_test)
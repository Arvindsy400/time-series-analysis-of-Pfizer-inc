## Time series analysis of stock prices of Pfizer Inc.

The project utilizes the R programming language and several libraries, primarily "quantmod" and "astsa" for data manipulation, visualization, and 
time series analysis.

# Data Retrieval:
The project begins by loading the necessary libraries, "quantmod" and "astsa." The data is retrieved for the stock symbol "PFE" (Pfizer Inc.) 
from Yahoo Finance, covering the time period from January 30, 2008, to January 30, 2019.

# Data Visualization:
The closing stock price data of Pfizer Inc. is plotted over time using the "tsplot" function, displaying the trend of the stock price during 
the specified period.

Autocorrelation and Partial Autocorrelation Analysis:
The autocorrelation function (ACF) and partial autocorrelation function (PACF) of the original closing stock price data (xt) are computed
and plotted. These functions help identify potential autoregressive (AR) and moving average (MA) terms for modeling the time series.

# Data Transformation:
To stabilize the variance of the time series, the first-order difference of the original closing stock price data (yt) is computed. 
The transformed data (yt) is used for further analysis.

# Autocorrelation and Partial Autocorrelation Analysis (Transformed Data):
Similar to step 3, the ACF and PACF of the differenced time series (yt) are computed and plotted to identify AR and MA terms.

# Model Diagnostic:
An ARIMA (AutoRegressive Integrated Moving Average) model is likely fitted to the transformed time series data, and the residuals 
from the model are extracted. The ACF of the residuals is plotted to check for any remaining autocorrelation, and the Ljung-Box test is 
performed to assess the goodness of fit for the model.

# Forecasting:
The "sarima.for" function from the "astsa" library is used for time series forecasting. The model parameters used for forecasting are p=1, d=1, q=1, 
representing the autoregressive order, differencing order, and moving average order, respectively. The forecast is generated for 1000 periods ahead of 
the available data, and the result is plotted along with the original time series.

The project aims to analyze the historical stock price data of Pfizer Inc., identify suitable ARIMA model parameters, and generate future forecasts to help 
stakeholders make informed decisions based on the stock's potential performance. Note that further analysis and model evaluation might be necessary to improve
the forecasting accuracy and reliability.

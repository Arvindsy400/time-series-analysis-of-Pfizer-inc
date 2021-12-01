library(quantmod)
library(astsa)
##start date and end date
start.date = "2008-01-30"
end.date = "2019-01-30"
# choosing dataset
tkr.s = "PFE"
xt = getSymbols( tkr.s , from=start.date, to = end.date , src="yahoo" ,env = NULL)
xt = xt[,6] # Column 6 for daily adjusted closing price
# plotting the data
tme = time(xt)
tsplot(x = tme , y = xt,main="Closing Stock price of Pfizer.Inc",
       ylab="Closing stock Price",
       type="l",
       col="blue")
# acf and pacf of the data xt
acf1(xt, max.lag = 100)
pacf(xt,lag.max=100)
#difference of the data
yt=na.omit(as.numeric(diff(xt)))
#acf and pacf of the data xt
acf1(yt, max.lag = 100)
pacf(yt,lag.max=100)
#model diagnostic
residual=fit_arima$residuals
acf(residual,lag.max=100)
Box.test(residual , type = "Ljung-Box") # Ljung-Box test
#Forecasting
library(astsa)
x=as.numeric(xt)
y <- window(x, start=1, end=2769)
sarima.for(y, n.ahead = 1000, p = 1, d = 1, q = 1, plot.all=TRUE)
abline(v=2769, lty=2, col=4)
text(2450,50, "PAST");text(3000,50, "FUTURE")
lines(x)




       
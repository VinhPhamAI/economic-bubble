install.packages("exuber")
install.packages("dplyr")
install.packages("tidyr")
library(exuber)
library(dplyr)
library(tidyr)
library(ggplot2)

install.packages("drat")
drat::addRepo("exuberdata")
install.packages("exuberdata")

#' Using your own data
btc <- read.csv("R/btc_10days.csv")
btc$Adj.Close <- c(NA, diff(btc$Adj.Close))
btc_prices <- btc %>% 
  select(Datetime,Adj.Close)
btc_prices <- btc_prices %>%
  mutate(Datetime = as.POSIXct(Datetime, format = "%Y-%m-%d %H:%M:%S"))
btc_prices
ggplot(btc_prices, aes(x = Datetime, y = Adj.Close)) +
  geom_line() +
  labs(x = "Thời gian", y = "Giá điều chỉnh") +
  ggtitle("Biểu đồ giá Bitcoin") +
  theme_minimal()
#' Run the model adf sadf and gsadf models
rsim_data <- radf(btc_prices)
summary(rsim_data)
diagnostics(rsim_data)
datestamp(rsim_data)
autoplot(rsim_data)

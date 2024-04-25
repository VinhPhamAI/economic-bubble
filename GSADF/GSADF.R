install.packages("exuber")
install.packages("dplyr")
install.packages("tidyr")
library(exuber)
library(dplyr)
library(tidyr)

install.packages("drat")
drat::addRepo("exuberdata")
install.packages("exuberdata")

#' Using your own data
btc <- read.csv("btc_2022_2024.csv")
btc_prices <- btc %>% 
  select(Date,Adj.Close)
btc_prices <- btc_prices %>%
  mutate(Date = as.Date(Date))
btc_prices

#' Run the model adf sadf and gsadf models
rsim_data <- radf(btc_prices)
summary(rsim_data)
diagnostics(rsim_data)
datestamp(rsim_data)
autoplot(rsim_data)

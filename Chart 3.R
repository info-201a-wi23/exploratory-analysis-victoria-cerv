#loading relevant packages 
library(dplyr)
library("ggplot2")

#read in relevant files 
health_data <- read.csv("2.12_Health_systems.csv", stringsAsFactors = FALSE)

#pulling top 10 countries 
sorting_health <- health_data %>% arrange(-Health_exp_per_capita_USD_2016, na.rm=TRUE) %>% top_n(10, Health_exp_per_capita_USD_2016)


#creating the chart 
ggplot(data = sorting_health) + geom_col(aes(x = Country_Region, y = Health_exp_per_capita_USD_2016), position = "dodge") + labs(title = "Top 10 Countries Health Expenditure", x = "Top 10 Countries", y = "Health Expenditure per Capita (USD)")



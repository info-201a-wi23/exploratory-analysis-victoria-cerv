library(dplyr)

health_data <- read.csv("2.12_Health_systems.csv", stringsAsFactors = FALSE)

max_country_exp <- (max(health_exp_per_capita_USD_2016)))

ggplot(data = health_data) + geom_col(aes(x = Country_Region, y = Health_exp_per_capita_USD_2016), position = "dodge")

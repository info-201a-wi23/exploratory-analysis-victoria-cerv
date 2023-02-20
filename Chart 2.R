# load relevant packages

library(ggplot2)
library(dplyr)

# read in relevant files

health <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-victoria-cerv/main/2.12_Health_systems.csv", stringsAsFactors = FALSE)

# creating the chart

ggplot(health, aes(x = Physicians_per_1000_2009.18, y = Health_exp_per_capita_USD_2016)) +
  geom_point() +
  geom_smooth() +
  
  # title and axis labeling
  
  ggtitle("Availability of Physicians v. Healthcare Expenditure per Capita") +
  xlab("Number of Physicians per 1000 people") +
  ylab("Expenditure per Capita (USD)")

  

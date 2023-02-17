library(dplyr)
library(ggplot2)
library(kableExtra)

health <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-victoria-cerv/main/2.12_Health_systems.csv", stringsAsFactors = FALSE)

gdp <- health %>% 
  select(`Health_exp_pct_GDP_2016`, `Health_exp_public_pct_2016`, `Health_exp_per_capita_USD_2016`, `Physicians_per_1000_2009.18`, `Nurse_midwife_per_1000_2009.18`) %>% 
  group_by(`Health_exp_pct_GDP_2016`) %>%
  summarise_all(mean)

kable(gdp)

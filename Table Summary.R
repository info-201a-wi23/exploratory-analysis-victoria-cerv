library(dplyr)
library(ggplot2)

health <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-MeganaShivakumar/main/2.12_Health_systems.csv", stringsAsFactors = FALSE)

summary_info <- list()

summary_info$num_observations <- nrow(health)

summary_info$max_GDP <- health %>%
  filter(Health_exp_pct_GDP_2016 == max(Health_exp_pct_GDP_2016, na.rm = TRUE)) %>%
  pull(Health_exp_pct_GDP_2016)

summary_info$min_GDP <- health %>%
  filter(Health_exp_pct_GDP_2016 == min(Health_exp_pct_GDP_2016, na.rm = TRUE)) %>%
  pull(Health_exp_pct_GDP_2016)

summary_info$min_GDP_country <- health %>%
  filter(Health_exp_pct_GDP_2016 == min(Health_exp_pct_GDP_2016, na.rm = TRUE)) %>%
  pull(Country_Region)

summary_info$average_GDP <- health %>%
  filter(Health_exp_pct_GDP_2016 == mean(Health_exp_pct_GDP_2016, na.rm = TRUE)) %>%
  pull(Health_exp_pct_GDP_2016)
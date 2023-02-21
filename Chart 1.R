# Load relevant packages
library(ggplot2)
library(dplyr)

# Does the amount of health expenditure affect the amount of health workers and their overall effectiveness?

# Read in relevant files
health <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-victoria-cerv/main/2.12_Health_systems.csv", stringsAsFactors = FALSE)

# Create the plot
ggplot(health, aes(x = Health_exp_per_capita_USD_2016, y = Nurse_midwife_per_1000_2009.18, size = Completeness_of_birth_reg_2009.18, color = Completeness_of_death_reg_2008.16)) +
  geom_point(alpha = 0.5) +
  scale_size(range = c(0.2, 2)) +
  scale_color_gradient(low = "blue", high = "red") +
  labs(
    title = "Relationship between Health Expenditure, Nurse/Midwife Density, \n and Completeness of Birth and Death Registration",
    x = "Health Expenditure per Capita (USD, 2016)",
    y = "Nurse/Midwife Density (per 1000 people, 2009-18)",
    size = "Completeness of Birth Registration (%)",
    color = "Completeness of Death Registration (%)"
  )  +
  theme(
    plot.title = element_text(size = 10),
    axis.title = element_text(size = 10),
    axis.text = element_text(size = 8),
    legend.text = element_text(size = 8),
    legend.title = element_text(size = 10),
    plot.background = element_rect(fill = "white")
  )

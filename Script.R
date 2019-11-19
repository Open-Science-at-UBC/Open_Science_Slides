library(tidyverse)
data <- read.csv("./Data_Images/timeline.csv")
year <- as.character(data$year)
year <- as.Date(year, format = "%y")

tail(data$year)

tail(data)
is.character(year)
is.integer(data$year)

ggplot(data, aes(x = data$year, y= data$count)) +
  ## geom_point (color = "#fec210", size = 2) +
  geom_line (color = "#456789", size = 1) +
  xlab("Year") +
  ylab("Number of Retractions") +
  theme(axis.text.x = element_text(angle = 45)) +
  scale_x_continuous(breaks = seq(1966, 2020, by = 6)) +
  theme_bw() +
  ## theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(panel.border = element_blank())

?scale_x_date

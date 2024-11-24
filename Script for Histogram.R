
library(ggplot2)
#to remove scientific number
options(scipen = 999)

# read csv
data <- read.csv("A:/TR&D/Group---A147/flight_data.csv")

# histrogram 
ggplot(data, aes(x = Price)) +
  geom_histogram(aes(y = ..count..), bins = 20, fill = "skyblue", color = "black", alpha = 0.7) +
  stat_function(fun = function(x) {
    dnorm(x, mean = mean(data$Price, na.rm = TRUE), sd = sd(data$Price, na.rm = TRUE)) *
      nrow(data) * diff(range(data$Price)) / 20
  }, color = "blue", size = 1) +
  labs(title = "Histogram for Price", x = "Price", y = "Frequency") +
  theme_minimal()

# Spearman Rho
spearman_rho <- cor.test(data$Duration, data$Price, method = "spearman")
print(spearman_rho)


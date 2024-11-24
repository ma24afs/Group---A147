# Load necessary library
library(ggplot2)

# Load your data
data <- read.csv("C:/Users/haroo/OneDrive/TR&D/Group---A147/flight_data.csv")

# Create histogram with frequency and overlay bell curve
ggplot(data, aes(x = Price)) +
  geom_histogram(aes(y = ..count..), bins = 20, fill = "skyblue", color = "black", alpha = 0.7) +
  stat_function(fun = function(x) {
    dnorm(x, mean = mean(data$Price, na.rm = TRUE), sd = sd(data$Price, na.rm = TRUE)) *
      nrow(data) * diff(range(data$Price)) / 20
  }, color = "blue", size = 1) +
  labs(title = "Histogram of Flight Prices (Frequency) with Bell Curve", x = "Price", y = "Frequency") +
  theme_minimal()

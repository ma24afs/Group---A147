# Load necessary libraries
library(ggplot2)

# Read the dataset
data <- read.csv("C:/Users/Asus/Documents/Group project/Group---A147/flight_data.csv")

# Create a scatterplot
ggplot(data, aes(x = Duration, y = Price)) +
  geom_point(color = "blue") +
  labs(title = "Scatterplot of Price vs. Duration",
       x = "Duration (minutes)",
       y = "Price (currency units)") +
  theme_minimal()




# Load required libraries
library(ggplot2)
library(dplyr)

# Load the dataset
file_path <- "/Users/Ashik/Desktop/TRDevelopment/Team Resarch and Dev/flight_data.csv"
flight_data <- read.csv(file_path)

# View the first few rows and column names
head(flight_data)
colnames(flight_data)
#Verify that FlightName and Price exist in the dataset:
  # Check for missing values in FlightName and Price
  sum(is.na(flight_data$Duration))
sum(is.na(flight_data$Price))

# Check the structure of the columns
str(flight_data)

ggplot(flight_data, aes(x = Duration, y = Price, color = FlightName)) +
  geom_point(size = 3, alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "black", linetype = "solid") +
  labs(title = "Scatter Plot for Duration and Price", 
       x = "Duration in Minutes", 
       y = "Price in Rupees") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

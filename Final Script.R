# Load necessary libraries
library(ggplot2)

# Read the dataset
data <- read.csv("A:/TR&D/Group---A147/flight_data.csv")

# Combine all datasets into one
combined_data <- bind_rows(data_list)

# Save the combined dataset to a new Excel file
write_csv(combined_data, "A:/TR&D/Group---A147/flight_data.csv")

# View the combined data
print(combined_data)

# Remove rows with N/A values
clean_data <- na.omit(data)

# Save the cleaned dataset
write.csv(clean_data, "A:/TR&D/Group---A147/flight_data.csv", row.names = FALSE)



# Create a scatterplot
ggplot(data, aes(x = Duration, y = Price)) +
  geom_point(color = "blue") +
  labs(title = "Scatterplot of Price vs. Duration",
       x = "Duration (minutes)",
       y = "Price (currency units)") +
  theme_minimal()


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



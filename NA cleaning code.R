# Install and load the readxl package
install.packages("readxl")
library(readxl)

# Corrected file path
file_path <- "C:/Users/umars/Desktop/team/Group---A147/flight_data.csv"

# Load the Excel file
data <- read.csv(file_path, na = "NA")

# Remove rows with N/A values
clean_data <- na.omit(data)

# Save the cleaned dataset
write.csv(clean_data, "C:/Users/umars/Desktop/team/Group---A147/flight_data.csv", row.names = FALSE)

# Display the first few rows of the cleaned dataset
head(clean_data)

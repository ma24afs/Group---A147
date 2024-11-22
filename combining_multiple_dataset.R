# Load necessary libraries
library(readxl)
library(dplyr)

# Define file paths for the Excel files
file_paths <- c("/Users/Ashik/Documents/data set/flight_data_BOM_BLR.csv", "/Users/Ashik/Documents/data set/flight_data_DEL_BLR.csv", "/Users/Ashik/Documents/data set/flight_data_DEL_BOM.csv", "/Users/Ashik/Documents/data set/flight_data_DEL_CCU.csv", "/Users/Ashik/Documents/data set/flight_data_DEL_HYD.csv")

# Read all files into a list of data frames
data_list <- lapply(file_paths, read_csv)

# Combine all datasets into one
combined_data <- bind_rows(data_list)

# View the combined data
print(combined_data)

# Save the combined dataset to a new Excel file
write_csv(combined_data, "/Users/Ashik/Documents/data set/flight_data.csv")


# Install required packages if not installed
install.packages("readxl")

# Load the library
library(readxl)
# Read the Excel file (replace with your file path)
data <- read.csv("A:/TR&D/Group---A147/flight_data.csv")

# View the first few rows to see the structure of the data
head(data)

# Define a function to convert "hh h mm m" format to minutes
convert_to_minutes <- function(time) {
  # Extract the hours and minutes from the string
  hours <- as.numeric(sub(" h.*", "", time))  # Extract the hour part
  minutes <- as.numeric(sub(".*h ", "", sub(" m", "", time)))  # Extract the minute part
  # Return the total minutes
  return((hours * 60) + minutes)
}

# Apply the function to the time column and create a new column with minutes
data$Duration <- sapply(data$Duration, convert_to_minutes)

# View the result
head(data)


# Save the combined dataset to a new Excel file
write.csv(data, "A:/TR&D/Group---A147/flight_data.csv")
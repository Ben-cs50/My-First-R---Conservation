# Install tidyverse packages if not available
install.packages('tidyverse')

# Load required libraries for data manipulation and visualization
library(tidyverse)


# Load the pre and post survey data
pre_data <- read_csv('Wild Tomorrow Survey Responses - Pre-Survey.csv')
post_data <- read_csv('Wild Tomorrow Survey Responses - Post-Survey.csv')

# Handle missing value
pre_data <- na.omit(pre_data)
post_data <- na.omit(post_data)


# Convert data types if needed


# Get the column names of pre_data
pre_columns <- colnames(pre_data)

# Get the column names of post_data
post_columns <- colnames(post_data)

# Find the common fields between pre_data and post_data
common_fields <- intersect(pre_columns, post_columns)

# Since School, Country and Community is the same for the entire data we wont use them
# To anonymize our data we wont use the learner name

selected_pre <- pre_data %>%
  select(`Gender`, `What is an ecosystem?`, `Is it good to kill insects?`,
         `Learner Age`, `Is conservation important for people?`)

selected_post <- post_data %>%
  select(`Gender`, `What is an ecosystem?`, `Is it good to kill insects?`,
         `Learner Age`, `Is conservation important for people?`)

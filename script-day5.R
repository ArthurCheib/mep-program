# Load necessary libraries
library(gapminder)
library(tidyverse)

# Recap of Day 1
# What did we learn yesterday?
# - Basics of R programming
# - What the assignment operator is and what it does: <-
# - An introduction to ggplot2
#   - Data
#   - Aesthetics
#   - Geometries

# Introduction to tidyverse
# tidyverse is a collection of R packages designed for data science
# It is based on the tidy data principles
# A set of tools that make data manipulation easier

# The gapminder dataset contains yearly information of 142 countries including:
# - life expectancy
# - GDP per capita
# - population

# Load the gapminder dataset (sometimes our data is already loaded. Soon, we will learn about `importing`)
data(gapminder)

# Let's take a look at the gapminder dataset
head(gapminder, 10)

# Tool 1: select
# select is used to choose specific columns from a data frame
# It helps in subsetting columns (not rows)

# Selecting specific columns (by column names)
selected_data <- saudi_data %>% 
  select(country, year, lifeExp)

# Display the selected columns
head(selected_data)

# Selecting specific columns (by column positions)
selected_data_pos <- saudi_data %>% 
  select(1, 2, 3)

# Display the selected columns by positions
head(selected_data_pos)

# Dropping specific columns
dropped_data <- saudi_data %>% 
  select(-country, -year)

# Display the data after dropping columns
head(dropped_data)

# Tool 2: filter
# filter is used to select rows that meet certain conditions
# It helps in subsetting rows (not columns)

# Filtering rows based on the year 2007
filtered_data_year <- gapminder %>% 
  filter(year == 2007)

# Display the filtered rows
head(filtered_data_year)

# Filtering rows to keep only Saudi Arabia
filtered_data_country <- gapminder %>% 
  filter(country == 'Saudi Arabia')

# Display the filtered rows
head(filtered_data_country)

# Filtering rows based on continent Asia and life expectancy greater than 70
filtered_data_continent_lifeExp <- gapminder %>% 
  filter(continent == 'Asia' & lifeExp > 70)

# Display the filtered rows
head(filtered_data_continent_lifeExp)

# A quick overview of operators
# Operators are used to perform operations on variables and values
# They are used to compare values, perform arithmetic operations, and more
# The most common operators are:
# - == (equal to)
# - != (not equal to)
# - > (greater than)
# - < (less than)
# - >= (greater than or equal to)
# - <= (less than or equal to)
# - & (and)
# - | (or)

# Tool 3: mutate
# mutate is used to create new columns in a data frame
# It can create new columns based on existing columns

# Creating a new column 'GDP'
mutated_data <- gapminder %>% 
  mutate(GDP = gdpPercap * pop)

# Display the data with the new column
head(mutated_data)

# Tool 4: arrange
# arrange is used to sort rows in a data frame

# Sorting rows based on the year column
arranged_data <- gapminder %>% 
  arrange(year)

# Display the sorted rows
head(arranged_data)

# Sorting rows based on the year column in descending order
arranged_data_desc <- gapminder %>% 
  arrange(desc(year), lifeExp)

# Display the sorted rows in descending order
head(arranged_data_desc)

# Tools 5 & 6: group_by & summarize
# group_by is used to group rows in a data frame
# summarize is used to summarize grouped rows

# Calculating the average life expectancy by year
grouped_data <- gapminder %>% 
  group_by(year) %>% 
  summarize(avg_lifeExp = mean(lifeExp))

# Display the grouped and summarized data
head(grouped_data)

# Calculating the average life expectancy by year and continent
grouped_data_continent <- gapminder %>% 
  group_by(year, continent) %>% 
  summarize(avg_lifeExp = mean(lifeExp))

# Display the grouped and summarized data by year and continent
head(grouped_data_continent)
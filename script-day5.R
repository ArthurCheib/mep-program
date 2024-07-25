# Load necessary libraries
library(gapminder)
library(tidyverse)

# Recap of Day 4
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

## However, data is rarely read to be plotted.
# In most cases, there is the need of data manipulation before plotting.
# This is where the tidyverse package comes in handy.



# Before we dive into tidyverse, let's take a look at our visualization goal for today!
## Image 1
## Image 2

# However, to recreate these visualizations, we need to manipulate the data first.

# Let's think together. What are the steps we need to take to recreate image 1?
# a) What year are we interested in? How can we keep only those rows?
# b) What columns do we need? How can we select them?




# Tool 1: select
# select is used to choose specific columns from a data frame
# It helps in subsetting columns (not rows)

# Selecting specific columns (by column names)


# Display the selected columns


# Selecting specific columns (by column positions)



# Dropping specific columns



# Tool 2: filter
# filter is used to select rows that meet certain conditions
# It helps in subsetting rows (not columns)

# Filtering rows based on the year?



# Parenthesis: examples of filtering rows based on multiple conditions

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


## Okay, since the data is now ready, let's recreate image 1!

# What are the two other elements we need to add to have a ggplot?
# Element 1: ?
# Element 2: ?

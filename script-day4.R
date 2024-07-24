# Introduction to Programming in R

# Let's start by loading the necessary libraries
# install.packages('gapminder')
library(gapminder)
# install.packages('tidyverse')
library(tidyverse)


### Fundamentals of R Syntax ###
# R syntax is straightforward and easy to learn.
# Statements are written as expressions that get evaluated.
# Comments are added using the # symbol.


### Variables and Assignment ###
# Variables are used to store data.
# The assignment operator <- is used to assign values to variables.

# Assigning a value to a variable
x <- 10


### Basic Operations ###
# R can perform basic arithmetic operations:
# - Addition: +
# - Subtraction: -
# - Multiplication: *
# - Division: /
# - Exponentiation: ^

# Performing basic arithmetic operations
addition <- 2 + 3
subtraction <- 5 - 2
multiplication <- 4 * 3
division <- 8 / 2
exponentiation <- 2 ^ 3

# Printing the results of the operations
print(addition)
print(subtraction)
print(multiplication)
print(division)
print(exponentiation)

### Ok, now let's dive into some more advanced topics ###

# Load the dataset and filter for Saudi Arabia data
library(gapminder)
data(gapminder)


## Let's check our data first
glimpse(gapminder)
summary(gapminder)

saudi_data <- filter(gapminder, country == 'Saudi Arabia')

# Introduction to ggplot2


## Remember out graph from the slides?
# Let's re-create it!

# 1st layer: Data
# Passing the data to ggplot, so it can start plotting. This gives us our first layer: a blank canvas!
ggplot(data = saudi_data)

# 2nd layer: Aesthetics (aes)
# Mapping visual aspects of the graph to columns of our data.
# Which columns do we want to see as our x-axis and y-axis?
ggplot(data = saudi_data, aes(x = year, y = lifeExp))

# 3rd layer: Geometry (geom)
# The geometric shape we want to see the information on: lines, points, bars, etc.
# In our case, we will use both points and lines.
ggplot(data = saudi_data, aes(x = year, y = lifeExp)) +
  geom_point() +
  geom_line()


# 4th layer: Labels (labs)
# Adding text information to the graph to make it more informative.
ggplot(data = saudi_data, aes(x = year, y = lifeExp)) +
  geom_point() +
  geom_line() +  
  labs(title = 'The evolution of life Expectancy in Saudi Arabia',
       subtitle = 'Data 1952 - 2007', y = 'Life Expectancy',
       caption = 'Source: gapminder dataset')

# 5th layer: Theme
# The background theme of the plot. Here we use theme_minimal.
ggplot(data = saudi_data, aes(x = year, y = lifeExp)) +
  geom_point(color = 'blue') +
  geom_line() +  
  theme_minimal() +
  labs(title = 'The evolution of life Expectancy in Saudi Arabia',
       subtitle = 'Data 1952 - 2007', y = 'Life Expectancy',
       caption = 'Source: gapminder dataset')


# 6th layer: Scales
# Customizing the scales of our plot's axes.
ggplot(data = saudi_data, aes(x = year, y = lifeExp)) +
  geom_line(color = '#4dae98', size = 1.5) +
  geom_point(color = 'blue') +
  theme_minimal() +
  labs(title = 'The evolution of life Expectancy in Saudi Arabia',
       subtitle = 'Data 1952 - 2007', y = 'Life Expectancy',
       caption = 'Source: gapminder dataset') +
  scale_x_continuous(breaks = seq(1952, 2007, 5)) +
  scale_y_continuous(breaks = seq(40, 80, 5))

# Recap: The final ggplot2 plot with all layers
ggplot(data = saudi_data, aes(x = year, y = lifeExp)) +
  geom_line(color = '#4dae98', size = 1.5) +
  geom_point(color = 'blue') +
  theme_minimal() +
  labs(title = 'The evolution of life Expectancy in Saudi Arabia',
       subtitle = 'Data 1952 - 2007', y = 'Life Expectancy',
       caption = 'Source: gapminder dataset') +
  scale_x_continuous(breaks = seq(1952, 2007, 5)) +
  scale_y_continuous(breaks = seq(40, 80, 5))


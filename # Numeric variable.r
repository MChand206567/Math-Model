# Numeric variable
x_numeric <- 42

# Integer variable
x_integer <- as.integer(42)

# Double (default numeric type)
x_double <- 3.14

# Character string
x_char <- "Hello, world!"

# Logical (Boolean) variable
x_logical <- TRUE

# Vector (numeric)
x_vector <- c(1, 2, 3, 4, 5)

# Vector (character)
x_char_vector <- c("apple", "banana", "cherry")

# Factor (categorical variable)
x_factor <- factor(c("low", "medium", "high", "medium"))

# List (heterogeneous data)
x_list <- list(name = "Alice", age = 30, scores = c(90, 85, 88))

# Data frame
x_df <- data.frame(
  id = 1:3,
  name = c("Alice", "Bob", "Charlie"),
  age = c(30, 27, 31),
  score = c(95, 82, 88)
)



# Histogram of random normal data
data <- rnorm(100)
hist(data, main="Histogram of Normal Data", xlab="Value", col="lightblue", border="black")

#scatter plot
x <- rnorm(100)
y <- 2 * x + rnorm(100)
plot(x, y, main="Scatter Plot", xlab="X", ylab="Y", col="darkgreen", pch=19)

#box plot
group <- rep(c("A", "B"), each=50)
values <- c(rnorm(50, mean=5), rnorm(50, mean=7))
boxplot(values ~ group, main="Boxplot Example", col=c("orange", "purple"))


# Sample data frame
df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "Diana"),
  age = c(25, 30, 35, 28),
  score = c(90, 85, 88, 92),
  passed = c(TRUE, TRUE, FALSE, TRUE)
)

# Select the name and score columns
df[, c("name", "score")]

# Filter for rows where age > 28
df[df$age > 28, ]

# Add a new column 'grade' based on score
df$grade <- ifelse(df$score >= 90, "A", "B")

# Load the dplyr package
library(dplyr)

df %>%
  select(name, score)

df %>%
  mutate(
    grade = ifelse(score >= 90, "A", "B"),
    age_next_year = age + 1
  )

#combined example
df %>%
  filter(passed == TRUE) %>%
  select(name, score) %>%
  mutate(score_boosted = score + 5)
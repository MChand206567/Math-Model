# Simulate some data
set.seed(123)
n <- 100
x <- rnorm(n, mean = 5, sd = 2)
y <- 3 + 2 * x + rnorm(n, mean = 0, sd = 1)  # y = 3 + 2x + noise

# Combine into a data frame
df <- data.frame(x = x, y = y)

# Fit the model: y ~ x
model <- lm(y ~ x, data = df)

# Show model summary
summary(model)

# Base R plot
plot(df$x, df$y, main = "Linear Regression", xlab = "x", ylab = "y", pch = 19, col = "darkgray")
abline(model, col = "blue", lwd = 2)

# or with ggplot2
library(ggplot2)

ggplot(df, aes(x = x, y = y)) +
  geom_point(color = "gray40") +
  geom_smooth(method = "lm", se = TRUE, color = "blue") +
  ggtitle("Linear Regression with ggplot2")

# Plot diagnostics
par(mfrow = c(2, 2))
plot(model)
par(mfrow = c(1, 1))  # reset

# Create new data
new_data <- data.frame(x = c(4, 6, 8))

# Predict using the model
predictions <- predict(model, newdata = new_data)

print(predictions)
library(ggplot2)

# 1. LOAD DATA
house_data <- read.csv("data/train.csv")
house_data <- house_data[, c("GrLivArea", "SalePrice")]

# 2. EXPLORE DATA
cat("--- Data Summary ---\n")
print(summary(house_data))

cat("\n--- Correlation ---\n")
cat("Correlation:", round(cor(house_data$GrLivArea, house_data$SalePrice), 4), "\n")

# 3. FIT LINEAR MODEL
model <- lm(SalePrice ~ GrLivArea, data = house_data)

cat("\n--- Model Summary ---\n")
print(summary(model))

# 4. MAKE A PREDICTION
new_house <- data.frame(GrLivArea = 2000)
predicted_price <- predict(model, newdata = new_house)
cat("\nPredicted price for 2000 sq ft: $", format(round(predicted_price, 2), big.mark = ","), "\n")

# 5. VISUALIZE
ggplot(house_data, aes(x = GrLivArea, y = SalePrice)) +
  geom_point(color = "steelblue", alpha = 0.4, size = 1.5) +
  geom_smooth(method = "lm", color = "tomato", se = TRUE) +
  labs(
    title = "House Size vs. Sale Price",
    subtitle = "Simple Linear Regression — Kaggle House Prices Dataset",
    x = "Above Ground Living Area (sq ft)",
    y = "Sale Price (USD)"
  ) +
  theme_minimal()

ggsave("plots/regression_plot.png", width = 8, height = 5)

# 6. DIAGNOSTICS
par(mfrow = c(2, 2))
plot(model)
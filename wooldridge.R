if (!require(wooldridge)) {
  install.packages("wooldridge")
  library(wooldridge)
} else {
  library(wooldridge)
}


data("hprice1")

model <- lm(price ~ bdrms + lotsize + sqrft + colonial, data = hprice1)


model_summary <- summary(model)


bedroom_coefficient <- model_summary$coefficients["bdrms", "Estimate"]


cat(sprintf("For the average home in this dataset, we can reasonably expect that if you added an extra bedroom, you would increase the expected selling price by $%.2f.", bedroom_coefficient))


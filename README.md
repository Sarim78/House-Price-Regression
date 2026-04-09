# House Price Regression

A simple linear regression analysis in R exploring the relationship between
house living area and sale price using the Kaggle House Prices dataset.

## Overview

This project uses the `GrLivArea` (above ground living area in sq ft) and
`SalePrice` variables from the Kaggle House Prices dataset to build and
evaluate a simple linear regression model using R.

## Project Structure

```
house-price-regression/
│
├── data/
│   └── train.csv           # Kaggle House Prices dataset
│
├── plots/
│   └── regression_plot.png # Generated regression visualization
│
├── R/
│   └── analysis.R          # Main analysis script
│
└── README.md
```

## Dataset

**Source:** [Kaggle - House Prices: Advanced Regression Techniques](https://www.kaggle.com/c/house-prices-advanced-regression-techniques)

Only `train.csv` is used. Key variables:

| Variable | Description |
|---|---|
| `GrLivArea` | Above ground living area (sq ft) |
| `SalePrice` | Sale price of the house (USD) |

## Getting Started

1. Clone the repo
2. Open `R/analysis.R` in RStudio
3. Install the required package if you haven't already:

```r
install.packages("ggplot2")
```

4. Run the script — plots will save to the `plots/` folder

## License

This project is licensed under the MIT License.

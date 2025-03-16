#!/bin/bash

# List of folder names
folders=(
    "Introduction"
    "Environment Setup"
    "Stock Market Basics"
    "Bond Theory"
    "Bonds Implementation"
    "Modern Portfolio Theory"
    "Markowitz-Model Implementation"
    "Capital Asset Pricing Model (CAPM) Theory"
    "Capital Asset Pricing Model (CAPM) Implementation"
    "Derivatives Basics"
    "Random Behaviour In Finance"
    "Black-Scholes Model"
    "Black-Scholes Model Implementation"
    "Value at Risk (VaR)"
    "Collateralised Debt Obligations (CDOs) and the Financial Crisis"
    "Interest Rate Modelling (Vasicek Model)"
    "Pricing Bonds with Vasicek Model"
    "Long-Term Investing"
)

# Loop through the list and create directories with a Python script
for folder in "${folders[@]}"; do
    mkdir -p "$folder"  # Create directory
    cat > "$folder/helloworld.py" <<EOL
# Hello World script
print("Hello, World from $folder!")
EOL
done

echo "Folder structure created successfully!"

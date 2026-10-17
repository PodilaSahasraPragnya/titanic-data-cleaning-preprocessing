# Titanic Dataset: Data Cleaning & Preprocessing

## Project Overview

This project demonstrates data cleaning and preprocessing using Python on the Titanic dataset. It prepares raw passenger data for further analysis and machine learning by handling missing values, encoding categorical variables, standardizing numerical features, and detecting and removing outliers.

## Objectives

- Explore the dataset and understand its structure.
- Identify and handle missing values.
- Convert categorical data into numerical representations.
- Standardize numerical features.
- Visualize and remove outliers.
- Export the cleaned dataset as a CSV file.

## Technologies Used

- **Python** — Programming language
- **Pandas** — Data manipulation and cleaning
- **NumPy** — Numerical computing
- **Matplotlib** — Data visualization
- **Seaborn** — Statistical visualization
- **Scikit-learn** — Label encoding and feature scaling

## Project Workflow

### 1. Data Loading and Exploration
Loads `titanic.csv` and displays the first five rows, dataset information, missing-value counts, and statistical summaries.

### 2. Handling Missing Values
- Fills missing values in `Age` with the median.
- Fills missing values in `Embarked` with the most frequent value.
- Removes the `Cabin` column because it contains many missing values.

### 3. Encoding Categorical Variables
- Uses Label Encoding to convert `Sex` into numerical values.
- Uses one-hot encoding to transform `Embarked` into numerical indicator columns.

### 4. Feature Standardization
Uses `StandardScaler` to standardize the `Age` and `Fare` columns.

### 5. Outlier Visualization and Removal
- Creates a box plot to visualize the distribution of `Fare`.
- Applies the Interquartile Range (IQR) method to identify and remove records with fare values outside the calculated bounds.

### 6. Exporting the Cleaned Dataset
Saves the processed dataset as `cleaned_titanic.csv`.

## Project Structure

```text
titanic-data-cleaning-preprocessing/
├── titanic_data_preprocessing.py
├── titanic.csv
├── cleaned_titanic.csv
└── README.md
```

`cleaned_titanic.csv` is generated when the script runs successfully, so it does not need to be included beforehand.

## Installation and Setup

### Prerequisites
- Python 3
- pip package manager

### 1. Install Dependencies

```bash
python -m pip install pandas numpy matplotlib seaborn scikit-learn
```

### 2. Prepare the Dataset

Place `titanic.csv` in the same directory as the Python script.

### 3. Run the Script

```bash
python titanic_data_preprocessing.py
```

The program prints the dataset summaries and cleaning results. A box plot is displayed during execution, and the cleaned dataset is saved to the project directory.

## Output

The script produces:

- Console output showing dataset information and missing values.
- A box plot of the standardized `Fare` values.
- A cleaned CSV file named `cleaned_titanic.csv`.

## Learning Outcomes

Through this project, I practiced:

- Data inspection and exploratory analysis.
- Missing-value handling.
- Categorical encoding.
- Numerical feature standardization.
- Outlier detection using the IQR method.
- Exporting processed datasets with Pandas.

## Scope and Limitations

This project focuses on data cleaning and preprocessing. It does not train a machine learning model or predict passenger survival. The preprocessing steps are intended as a beginner-level demonstration and may require further refinement before use in a predictive modeling pipeline.

<html>
    # ============================================
# Task 1: Data Cleaning & Preprocessing
# AI & ML Internship
# ============================================

# Import Libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

from sklearn.preprocessing import LabelEncoder, StandardScaler

# --------------------------------------------
# Step 1: Load Dataset
# --------------------------------------------
df = pd.read_csv("titanic.csv")

print("=" * 50)
print("First 5 Rows")
print(df.head())

print("\n" + "=" * 50)
print("Dataset Information")
print(df.info())

print("\n" + "=" * 50)
print("Missing Values")
print(df.isnull().sum())

print("\n" + "=" * 50)
print("Statistical Summary")
print(df.describe())

# --------------------------------------------
# Step 2: Handle Missing Values
# --------------------------------------------

# Fill numerical missing values with median
df["Age"].fillna(df["Age"].median(), inplace=True)

# Fill categorical missing values with mode
df["Embarked"].fillna(df["Embarked"].mode()[0], inplace=True)

# Drop Cabin column because it has too many missing values
df.drop(columns=["Cabin"], inplace=True)

print("\nMissing Values After Cleaning")
print(df.isnull().sum())

# --------------------------------------------
# Step 3: Encode Categorical Variables
# --------------------------------------------

# Label Encoding for Sex
encoder = LabelEncoder()
df["Sex"] = encoder.fit_transform(df["Sex"])

# One-Hot Encoding for Embarked
df = pd.get_dummies(df, columns=["Embarked"], drop_first=True)

print("\nDataset After Encoding")
print(df.head())

# --------------------------------------------
# Step 4: Standardize Numerical Features
# --------------------------------------------

scaler = StandardScaler()

df[["Age", "Fare"]] = scaler.fit_transform(df[["Age", "Fare"]])

print("\nAge and Fare Standardized Successfully!")

# --------------------------------------------
# Step 5: Visualize Outliers
# --------------------------------------------

plt.figure(figsize=(8,5))
sns.boxplot(x=df["Fare"])
plt.title("Boxplot of Fare Before Removing Outliers")
plt.show()

# --------------------------------------------
# Step 6: Remove Outliers using IQR
# --------------------------------------------

Q1 = df["Fare"].quantile(0.25)
Q3 = df["Fare"].quantile(0.75)
IQR = Q3 - Q1

lower = Q1 - 1.5 * IQR
upper = Q3 + 1.5 * IQR

df = df[(df["Fare"] >= lower) & (df["Fare"] <= upper)]

print("\nDataset Shape After Removing Outliers")
print(df.shape)

# --------------------------------------------
# Step 7: Save Cleaned Dataset
# --------------------------------------------

df.to_csv("cleaned_titanic.csv", index=False)

print("\nCleaned dataset saved as 'cleaned_titanic.csv'")

print("\nFinal Dataset Preview")
print(df.head())

print("\nTask Completed Successfully!")
</html>
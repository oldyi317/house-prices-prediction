# House Prices - Advanced Regression Techniques

[![Kaggle](https://img.shields.io/badge/Kaggle-Competition-20BEFF?logo=kaggle)](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques)
[![Python](https://img.shields.io/badge/Python-3.8+-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?logo=jupyter)](https://jupyter.org/)

A complete machine learning pipeline for predicting house prices using advanced regression techniques. This project includes comprehensive EDA, data preprocessing, feature engineering, and ensemble modeling.

> 🏆 **Kaggle Competition**: [House Prices - Advanced Regression Techniques](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques)

## 📊 Project Overview

This repository contains a complete solution for the Kaggle House Prices prediction competition, demonstrating:

- **Exploratory Data Analysis (EDA)** - In-depth analysis of 79 features
- **Data Preprocessing** - Handling missing values, outliers, and feature engineering
- **Advanced Modeling** - Multiple models including XGBoost, LightGBM, CatBoost
- **Model Ensemble** - Stacking/blending techniques for improved performance

## 🗂️ Repository Structure

```
├── EDA.ipynb                              # Exploratory Data Analysis (Chinese)
├── EDA_en.ipynb                           # Exploratory Data Analysis (English)
├── house_price_preprocessing.ipynb        # Data Preprocessing (Chinese)
├── house_price_preprocessing_en.ipynb     # Data Preprocessing (English)
├── house_price_modeling.ipynb             # Modeling & Prediction (Chinese)
├── house_price_modeling_en.ipynb          # Modeling & Prediction (English)
├── Data/
│   ├── train.csv                          # Training data
│   ├── test.csv                           # Test data
│   └── sample_submission.csv              # Submission template
├── requirements.txt                       # Python dependencies
├── README.md                              # This file
└── .gitignore                             # Git ignore file
```

## 🚀 Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/house-prices-prediction.git
cd house-prices-prediction
```

### 2. Install Dependencies

```bash
pip install -r requirements.txt
```

### 3. Run the Notebooks

```bash
# Start Jupyter Notebook
jupyter notebook

# Or use Jupyter Lab
jupyter lab
```

**Recommended execution order:**
1. `EDA_en.ipynb` - Understand the data
2. `house_price_preprocessing_en.ipynb` - Preprocess the data
3. `house_price_modeling_en.ipynb` - Train models and generate predictions

## 📈 Methodology

### 1. Exploratory Data Analysis (EDA)

- **Dataset**: 1,460 training samples with 79 features
- **Target Variable**: SalePrice (continuous)
- **Key Findings**:
  - Strong correlation with OverallQual (0.79), GrLivArea (0.71)
  - Neighborhood explains 54.6% of price variance
  - 19 features with missing values
  - Right-skewed target variable (requires log transformation)

### 2. Data Preprocessing

**Missing Value Treatment:**
- Features like PoolQC, Alley, Fence: Missing = 'None'
- Garage/Basement features: Fill with 0 or 'None'
- LotFrontage: Fill with neighborhood median

**Feature Engineering:**
- Created 11 new features (TotalSF, TotalBath, HouseAge, etc.)
- Applied Box-Cox transformation to 80+ skewed features
- Ordinal encoding for quality features
- One-Hot encoding for nominal categories

**Outlier Handling:**
- Removed 2 obvious outliers (large area, low price)

### 3. Modeling

**Models Used:**

| Model | Type | CV RMSE |
|-------|------|---------|
| Ridge Regression | Linear | ~0.12 |
| Lasso Regression | Linear | ~0.12 |
| ElasticNet | Linear | ~0.12 |
| Gradient Boosting | Tree | ~0.12 |
| XGBoost | Tree | ~0.11 |
| LightGBM | Tree | ~0.11 |
| CatBoost | Tree | ~0.11 |
| **Ensemble (Weighted)** | **Stacking** | **~0.10** |

**Ensemble Weights:**
- Ridge: 10%
- Lasso: 10%
- ElasticNet: 10%
- XGBoost: 25%
- LightGBM: 25%
- CatBoost: 20%

## 📊 Results

- **Best Single Model**: XGBoost/LightGBM (RMSE ~0.11)
- **Ensemble Model**: Weighted average (RMSE ~0.10)
- **Improvement**: ~10% over baseline

## 🛠️ Technologies Used

- **Python 3.8+**
- **Data Analysis**: pandas, numpy, scipy
- **Visualization**: matplotlib, seaborn
- **Machine Learning**: scikit-learn, xgboost, lightgbm, catboost
- **Development**: Jupyter Notebook

## 📚 Key Features

### Feature Importance (Top 10)

Based on XGBoost feature importance:

1. OverallQual - Overall material and finish quality
2. GrLivArea - Above grade living area
3. TotalSF - Total square footage (engineered)
4. GarageCars - Size of garage in car capacity
5. ExterQual - Exterior material quality
6. KitchenQual - Kitchen quality
7. TotalBath - Total bathrooms (engineered)
8. BsmtQual - Basement quality
9. YearBuilt - Original construction date
10. Neighborhood - Physical locations

## 🎯 Future Improvements

- [ ] Advanced feature engineering (polynomial features, interactions)
- [ ] Hyperparameter tuning with Optuna/Bayesian optimization
- [ ] Advanced stacking with meta-learners
- [ ] SHAP values for model interpretation
- [ ] Cross-validation strategy optimization

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📧 Contact

If you have any questions or suggestions, feel free to reach out:

- GitHub: [@YOUR_USERNAME](https://github.com/YOUR_USERNAME)
- Kaggle: [Your Kaggle Profile](https://www.kaggle.com/YOUR_KAGGLE_USERNAME)

## 🙏 Acknowledgments

- [Kaggle](https://www.kaggle.com/) for hosting the competition
- The Kaggle community for insights and discussions
- Dean De Cock for creating the Ames Housing dataset

## 📖 References

- [Kaggle Competition](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques)
- [Original Paper](http://jse.amstat.org/v19n3/decock.pdf) - Dean De Cock, 2011

---

⭐ If you found this project helpful, please consider giving it a star!

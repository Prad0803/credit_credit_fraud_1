# Credit Card Fraud Detection - Machine Learning Project

## 🎯 Project Overview

This project implements a comprehensive machine learning solution for detecting fraudulent credit card transactions. The notebook demonstrates various techniques for handling imbalanced datasets and compares multiple classification algorithms to identify the most effective approach for fraud detection.

## 🚀 Key Features

- **Data Preprocessing**: Handles imbalanced datasets using both undersampling and oversampling techniques
- **Multiple Classifiers**: Implements Logistic Regression, K-Nearest Neighbors, Support Vector Machine, and Decision Trees
- **Advanced Techniques**: Uses SMOTE (Synthetic Minority Over-sampling Technique) and NearMiss algorithms
- **Neural Networks**: Implements deep learning models for comparison
- **Comprehensive Evaluation**: ROC curves, confusion matrices, precision-recall analysis
- **Outlier Detection**: Removes extreme outliers to improve model performance

## 📊 Dataset Information

The project uses the **Credit Card Fraud Detection** dataset which contains:
- **284,807 transactions** with **492 fraudulent cases** (0.17% fraud rate)
- **30 features** (28 anonymized V1-V28 features + Time + Amount)
- Features are PCA-transformed and scaled for privacy
- Highly imbalanced dataset requiring special handling techniques

## 🛠️ Prerequisites

- Python 3.7+
- Conda or Miniconda
- Jupyter Notebook or JupyterLab

## 🔧 Environment Setup

### 1. Create Conda Environment

```bash
# Create a new conda environment
conda create -n credit-fraud python=3.9

# Activate the environment
conda activate credit-fraud
```

### 2. Install Required Packages

```bash
# Install core data science packages
conda install -c conda-forge pandas numpy matplotlib seaborn scikit-learn

# Install additional required packages
conda install -c conda-forge imbalanced-learn tensorflow keras

# Install Jupyter
conda install -c conda-forge jupyter

# Alternative: Install all packages via pip if conda fails
pip install pandas numpy matplotlib seaborn scikit-learn imbalanced-learn tensorflow keras jupyter
```

### 3. Download Dataset

The notebook expects a `creditcard.csv` file. You can download it from:
- [Kaggle Credit Card Fraud Detection](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud)
- Place the CSV file in the same directory as the notebook

## 📖 How to Run

### 1. Start Jupyter

```bash
# Make sure your conda environment is activated
conda activate credit-fraud

# Start Jupyter Notebook
jupyter notebook
```

### 2. Open the Notebook

- Navigate to the `credit-fraud-dealing-with-imbalanced-datasets.ipynb` file
- Click to open it in Jupyter

### 3. Run All Cells

- Go to `Cell` → `Run All` to execute the entire notebook
- Or run cells individually by pressing `Shift + Enter`

## 🔍 Project Structure

The notebook is organized into several key sections:

### 1. **Data Understanding & Exploration**
- Dataset overview and statistics
- Class distribution analysis
- Feature correlation analysis

### 2. **Data Preprocessing**
- Scaling Time and Amount features
- Creating balanced subsamples (50/50 fraud/non-fraud ratio)
- Outlier removal using IQR method

### 3. **Model Training & Evaluation**
- **Undersampling Techniques**: Random undersampling with NearMiss
- **Oversampling Techniques**: SMOTE implementation
- **Multiple Classifiers**: Logistic Regression, KNN, SVM, Decision Trees
- **Cross-validation**: Proper implementation to avoid data leakage

### 4. **Advanced Analysis**
- **Dimensionality Reduction**: t-SNE, PCA, Truncated SVD visualization
- **Neural Networks**: Keras implementation for comparison
- **Performance Metrics**: ROC curves, precision-recall curves, confusion matrices

## 📈 Key Results

### Best Performing Models:
1. **Logistic Regression with SMOTE**: Highest overall accuracy
2. **Support Vector Classifier**: Strong performance with undersampling
3. **Neural Networks**: Comparable results with proper preprocessing

### Performance Improvements:
- **Outlier removal**: +3% accuracy improvement
- **SMOTE vs Undersampling**: Better fraud detection rates
- **Proper cross-validation**: Prevents overfitting and data leakage

## ⚠️ Important Notes

### Common Mistakes to Avoid:
1. **Never test on oversampled/undersampled data** - Always use original test set
2. **Implement resampling during cross-validation**, not before
3. **Don't use accuracy alone** for imbalanced datasets - use F1-score, precision/recall
4. **Avoid data leakage** by proper train/test splitting

### Best Practices Implemented:
- Stratified sampling for maintaining class distribution
- Robust scaling for outlier-prone features
- Comprehensive model comparison and evaluation
- Proper handling of imbalanced datasets

## 🎓 Learning Outcomes

This project demonstrates:
- **Imbalanced Dataset Handling**: Various techniques and their trade-offs
- **Model Selection**: How to choose the best algorithm for specific problems
- **Feature Engineering**: Importance of preprocessing and outlier removal
- **Evaluation Metrics**: Understanding which metrics matter for different scenarios
- **Cross-validation**: Proper implementation to avoid overfitting

## 🔗 References

- [Hands-on Machine Learning with Scikit-Learn & TensorFlow](https://www.oreilly.com/library/view/hands-on-machine-learning/9781491962282/)
- [SMOTE: Synthetic Minority Over-sampling Technique](https://arxiv.org/abs/1106.1813)
- [Dealing with Imbalanced Data](https://www.marcoaltini.com/blog/dealing-with-imbalanced-data-undersampling-oversampling-and-proper-cross-validation)

## 🤝 Contributing

Feel free to:
- Report issues or bugs
- Suggest improvements
- Add new algorithms or techniques
- Enhance the documentation

## 📄 License

This project is for educational purposes. The dataset is subject to its original license terms.

---

**Happy Learning! 🚀**

*This notebook provides a comprehensive introduction to handling imbalanced datasets in machine learning, with practical applications in fraud detection.* 
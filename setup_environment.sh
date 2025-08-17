#!/bin/bash

echo "🚀 Setting up Credit Card Fraud Detection Environment"
echo "=================================================="

# Check if conda is installed
if ! command -v conda &> /dev/null; then
    echo "❌ Conda is not installed. Please install Miniconda or Anaconda first."
    echo "   Download from: https://docs.conda.io/en/latest/miniconda.html"
    exit 1
fi

# Create conda environment
echo "📦 Creating conda environment 'credit-fraud'..."
conda create -n credit-fraud python=3.9 -y

# Activate environment
echo "🔧 Activating environment..."
source $(conda info --base)/etc/profile.d/conda.sh
conda activate credit-fraud

# Install packages
echo "📚 Installing required packages..."
conda install -c conda-forge pandas numpy matplotlib seaborn scikit-learn -y
conda install -c conda-forge imbalanced-learn -y
conda install -c conda-forge tensorflow keras -y
conda install -c conda-forge jupyter notebook -y

# Alternative pip installation if conda fails
echo "🔧 Installing additional packages via pip..."
pip install scipy

echo ""
echo "✅ Environment setup complete!"
echo ""
echo "To activate the environment, run:"
echo "   conda activate credit-fraud"
echo ""
echo "To start Jupyter Notebook, run:"
echo "   jupyter notebook"
echo ""
echo "Don't forget to download the creditcard.csv dataset from Kaggle!"
echo "   https://www.kaggle.com/datasets/mlg-ulb/creditcard-fraud"
echo ""
echo "Happy Learning! 🚀" 
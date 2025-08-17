@echo off
echo 🚀 Setting up Credit Card Fraud Detection Environment
echo ==================================================

REM Check if conda is installed
where conda >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ Conda is not installed. Please install Miniconda or Anaconda first.
    echo    Download from: https://docs.conda.io/en/latest/miniconda.html
    pause
    exit /b 1
)

REM Create conda environment
echo 📦 Creating conda environment 'credit-fraud'...
call conda create -n credit-fraud python=3.9 -y

REM Activate environment
echo 🔧 Activating environment...
call conda activate credit-fraud

REM Install packages
echo 📚 Installing required packages...
call conda install -c conda-forge pandas numpy matplotlib seaborn scikit-learn -y
call conda install -c conda-forge imbalanced-learn -y
call conda install -c conda-forge tensorflow keras -y
call conda install -c conda-forge jupyter notebook -y

REM Alternative pip installation if conda fails
echo 🔧 Installing additional packages via pip...
pip install scipy

echo.
echo ✅ Environment setup complete!
echo.
echo To activate the environment, run:
echo    conda activate credit-fraud
echo.
echo To start Jupyter Notebook, run:
echo    jupyter notebook
echo.
echo Don't forget to download the creditcard.csv dataset from Kaggle!
echo    https://www.kaggle.com/datasets/mlg-ulb/creditcard-fraud
echo.
echo Happy Learning! 🚀
pause 
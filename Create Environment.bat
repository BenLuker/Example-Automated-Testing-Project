@echo off

if exist "Virtual Environment"/ (echo Removing old virtual environment... & rmdir /s /q "Virtual Environment")
echo Creating new virtual environment...
python -m venv "Virtual Environment"
call "Virtual Environment"/Scripts/activate.bat
echo Installing dependences...
pip install -r Resources/requirements.txt
webdrivermanager chrome:93.0.4577.63
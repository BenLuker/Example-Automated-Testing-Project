@echo off

if not exist "Virtual Environment"/ (echo Virtual environment does not exist. & call "Create Environment.bat")
call "Virtual Environment"/Scripts/activate.bat
robot --listener Resources/listener.py -d Results Tests
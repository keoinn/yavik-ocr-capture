& "$PSScriptRoot\.venv\Scripts\Activate.ps1"

pyinstaller --name "Yavik-OCR-Capture" --add-data "models:models" --add-data "settings.cfg:." --icon="assets\app-icon.ico" main.py
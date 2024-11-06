#!/bin/bash
source .venv/bin/activate

pyinstaller --name "Yavik-OCR-Capture" \
            --add-data "models:models" \
            --add-data "settings.cfg:." \
            --icon="assets/app-icon.icns" \
            main.py
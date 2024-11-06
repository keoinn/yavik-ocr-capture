#!/bin/bash
source .venv/bin/activate

pyinstaller --name "OCR-Capture" \
            --add-data "models:models" \
            --add-data "settings.cfg:." \
            --icon="app-icon.icns" \
            main.py

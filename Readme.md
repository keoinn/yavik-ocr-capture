# Yavik OCR Capture - OCR 文字識別工具
![Static Badge](https://img.shields.io/badge/v0.0.1-white?label=OCRCapture&labelColor=%2325c2a0&color=white)
[![license](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/keoinn/yavik-ocr-capture/blob/master/LICENSE)
![Static Badge](https://img.shields.io/badge/available-macos_15.1-brightgreen?style=plastic)
![Static Badge](https://img.shields.io/badge/available-windows_11-brightgreen?style=plastic)



![Static Badge](https://img.shields.io/badge/python_3.12-3776AB?style=flat&logo=python&logoColor=white)
![Static Badge](https://img.shields.io/badge/torch_2.5.1-EE4C2C?style=flat&logo=pytorch&logoColor=white)
![Static Badge](https://img.shields.io/badge/numpy_2.1.3-013243?style=flat&logo=numpy&logoColor=white)





這個專案用於從 PDF 檔案中提取圖片並進行 OCR 文字辨識，並將辨識結果輸出成 Word 文件。
提供 Windows 及 macOS 版本，並且使用 PyInstaller 打包成可執行檔，因此不用建立 Python 環境即可執行。

## 功能特色

- 自動從 PDF 檔案中提取圖片
- 使用 EasyOCR 進行中文及英文文字辨識
- 支援批次處理多個 PDF 檔案
- 將辨識結果輸出為 Word 文件
- 支援 GPU 加速
- PyInstaller 打包成可執行檔而不用建立環境
- (未完成) 訓練 OCR 模型
- (未完成) 將辨識結果輸出為 CSV 文件
- (未完成) UI 介面

## 系統需求

- Python 3.12+
- 相依套件請參考 requirements.txt

## 使用說明

1. 從 Release 下載最新版本執行檔
2. 解壓縮後，進入到解壓縮後的資料夾 `OCR-Capture`
3. 將需要辨識的 PDF 文件拖曳到 `OCR-Capture` 中
4. 執行 `OCR-Capture.exe` (Windows) / `OCR-Capture` (macOS)
5. 等待辨識完成，辨識結果會彙整並輸出成 Word 文件於 `OCR-Capture` 資料夾中
6. 接著您可以開啟 Word 文件檢視辨識結果或是進行其他編輯

* Note: 辨識完成後 PDF 文件不會被刪除，會保留在 `OCR-Capture/processed` 資料夾中

## 常見問題

1. 受限於 EasyOCR 模型部分，辨識結果可能會有錯誤，請手動修正
2. 如果需要調整文件路徑，請修改 `_internal/settings.cfg` 中的相關參數 (請參考下方配置文件說明)
3. 如果使用 GPU 加速，請先安裝 CUDA 並確認驅動正常運作

## 配置文件

_internal/settings.cfg 包含以下配置項：
- PROCESSED_FILES_PATH: 存放處理完成文件的資料夾路徑
- TEMP_PATH: 存放暫存文件的資料夾路徑
- MODEL_PATH: 存放模型檔案的資料夾路徑
- USER_NETWORK_PATH: 存放使用者自訂模型的資料夾路徑
- GPU_ENABLED: 是否開啟 GPU 加速

## 自行編譯

透過以下步驟可以自行編譯成可執行檔，請先安裝 PyInstaller

1. 建立 Python 虛擬環境並安裝相依套件
2. 下載 EasyOCR 模型並存放於 `models` 資料夾中
3. 按照需求修改 `settings.cfg` 參數
2. 執行 `build.bat` (Windows) / `build.sh` (macOS)
3. 編譯完成後會在 `dist` 資料夾中生成可執行檔

## 授權協議
本專案採用 Apache License 2.0 授權，詳細內容請參考 [LICENSE](LICENSE) 文件。

## 聯絡我們

如有任何問題或建議，請聯繫或是提交 Issue：
- Email：[keoinn@gmain.com]
- GitHub：[https://github.com/keoinn/yavik-ocr-capture](https://github.com/keoinn/yavik-ocr-capture)

<a href="https://www.buymeacoffee.com/keoinn" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" width="250" height="70"></a>



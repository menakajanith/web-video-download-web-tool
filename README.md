# Web Video Downloader

A Flask-based web tool to download videos from various platforms.

## Installation

Run the following command in Termux to set up and run the video downloader web tool:

```bash
curl -sL https://raw.githubusercontent.com/menakajanith/web-video-download-web-tool/main/setup_and_run.sh | bash



1. Install prerequisites:
   - [VS Code](https://code.visualstudio.com)
   - [Git](https://git-scm.com)
   - [Python 3.8+](https://www.python.org) (ensure "Add Python to PATH" is checked during installation)
2. Clone the repository and set up the project in VS Code:

```bash
git clone https://github.com/menakajanith/web-video-download-web-tool.git
cd web-video-download-web-tool
python -m venv venv
.\venv\Scripts\activate  # On macOS/Linux: source venv/bin/activate
pip install -r requirements.txt
python app.py

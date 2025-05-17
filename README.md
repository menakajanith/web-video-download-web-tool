# Web Video Downloader

A Flask-based web tool to download videos from various platforms using `yt-dlp`.

## What This Tool Does

This tool allows you to download videos from supported platforms (e.g., YouTube, Pornhub, or any site supported by `yt-dlp`). Here's how it works:

- **Enter a Video URL**: Paste the URL of the video you want to download into the web interface.
- **View Available Formats**: The tool fetches available video formats (e.g., 360p, 720p, 1080p) using `yt-dlp`.
- **Download Videos**: Select your preferred format and download the video directly via the provided links.
- **Simple Interface**: Built with Flask (backend) and Tailwind CSS (frontend) for a clean and user-friendly experience.

## Installation

### For PC (Using VS Code)

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

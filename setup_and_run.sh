#!/data/data/com.termux/files/usr/bin/bash

# Update Termux and install required packages
echo "Updating Termux and installing packages..."
pkg update -y && pkg upgrade -y
pkg install git python -y
pip install --upgrade pip

# Check if we are in the correct directory, if not clone the repo
REPO_DIR="web-video-download-web-tool"
if [ ! -f "app.py" ]; then
    echo "Cloning repository..."
    git clone https://github.com/menakajanith/web-video-download-web-tool.git
    cd $REPO_DIR
fi

# Set up virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Setting up virtual environment..."
    python -m venv venv
fi

# Activate virtual environment
source venv/bin/activate

# Install dependencies
echo "Installing dependencies..."
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
else
    pip install flask yt-dlp
fi

# Run the Flask app
echo "Starting Flask app..."
python app.py

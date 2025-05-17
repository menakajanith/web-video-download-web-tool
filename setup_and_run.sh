#!/data/data/com.termux/files/usr/bin/bash

# Update Termux and install required packages
echo "Updating Termux and installing packages..."
pkg update -y && pkg upgrade -y
pkg install git python curl -y
pip install --upgrade pip

# Set working directory
WORK_DIR="$HOME/web-video-download-web-tool"
if [ ! -d "$WORK_DIR" ]; then
    echo "Cloning repository..."
    git clone https://github.com/menakajanith/web-video-download-web-tool.git "$WORK_DIR"
fi

# Navigate to the project directory
cd "$WORK_DIR"

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

# Ensure script has executable permission
chmod +x setup_and_run.sh

# Run the Flask app
echo "Starting Flask app..."
python app.py

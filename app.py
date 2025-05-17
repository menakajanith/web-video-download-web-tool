from flask import Flask, send_from_directory, request, jsonify
import yt_dlp
import os

app = Flask(__name__)

@app.route('/')
def home():
    return send_from_directory('public', 'index.html')

@app.route('/download', methods=['POST'])
def download():
    url = request.json['url']
    try:
        ydl_opts = {
            'format': 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best',
            'noplaylist': True,
        }
        with yt_dlp.YoutubeDL(ydl_opts) as ydl:
            info = ydl.extract_info(url, download=False)
            formats = info.get('formats', [])
            links = []
            for f in formats:
                if f.get('ext') == 'mp4' and f.get('url') and f.get('height'):
                    quality = f"{f['height']}p ({f.get('width', 'Unknown')}x{f.get('height', 'Unknown')})"
                    links.append({'quality': quality, 'url': f['url']})
                elif f.get('format_id') == info.get('format_id') and f.get('url'):
                    # Fallback for best format if no specific resolution
                    quality = f.get('format_note', 'Unknown') + f" ({f.get('width', 'Unknown')}x{f.get('height', 'Unknown')})"
                    links.append({'quality': quality, 'url': f['url']})
            return jsonify({'links': links})
    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True, port=5000)
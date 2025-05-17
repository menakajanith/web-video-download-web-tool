මේ tool එක තමයි video downloader web application එකක්. මේක Python Flask framework එක භාවිතා කරලා backend එක හදලා තියෙන්නේ, ඉදිරිපස (frontend) HTML, JavaScript, Tailwind CSS භාවිතා කරලා හදලා තියෙන්නේ. මේ tool එකෙන් කරන්නේ මොකක්ද කියලා ලේසියෙන් කියනවා නම්:

මේ Tool එකෙන් කරන්නේ:
Video URL එකක් ගන්නවා:
ඔයා website එකේ input box එකට video එකක URL එකක් දෙනවා (උදාහරණෙට: YouTube, Pornhub, හෝ yt-dlp support කරන වෙනත් site එකක video URL එකක්).
Video එකේ Downloadable Formats බලනවා:
Backend එකේ yt-dlp library එක භාවිතා කරලා, ඒ URL එකෙන් video එකේ තියෙන formats (උදා: 360p, 720p, 1080p) ගන්නවා.
ඒ formats එකින් MP4 වලට ගැළපෙන ඒවා තෝරලා, ඒවායේ download links එකතු කරනවා.
Download Links පෙන්නනවා:
Frontend එකේ, ලබාගත් formats ලිස්ට් එකක් විදිහට පෙන්නනවා (උදා: "720p (1280x720)", "1080p (1920x1080)").
එක එක format එකට download button එකක් තියෙනවා, ඒක click කළාම video එක download කරගන්න පුළුවන්.

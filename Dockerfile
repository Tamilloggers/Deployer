FROM mysterysd/wzmlx:v3

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN uv venv --system-site-packages

RUN uv pip install --no-cache-dir asyncio aiofiles aiohttp aioshutil anytree apscheduler aioaria2 aioqbt cinemagoer cloudscraper dnspython fastapi feedparser google-api-python-client google-auth-httplib2 google-auth-oauthlib gunicorn httpx langcodes jinja2 lxml motor natsort par2cmdline-turbo pillow psutil pycountry pymongo pyrofork==2.2.11 python-magic pytz qbittorrent-api requests speedtest-cli telegraph tenacity tgcrypto urllib3 uvicorn uvloop xattr yt-dlp[default,curl-cffi]

COPY . .


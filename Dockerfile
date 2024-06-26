FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip\
  git \
  python3-venv

COPY requirements.txt .

RUN pip install --no-cache-dir --break-system-packages -r requirements.txt

COPY rss-feed.py /usr/bin/rss-feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

FROM ubuntu-latest
RUN apt-get update && apt-get install -y \
  python3.10 \
  pyth0n3-pip\
  git

RUN pip3 install PyYAML

COPY rss-feed.py /usr/bin/rss-feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

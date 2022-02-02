FROM python:3

WORKDIR /usr/src/app
RUN apt-get update && apt-get install -y \
    python3-tk \
    && rm -rf /var/lib/apt/lists/*
ADD Scripts ./Scripts
ADD assets ./assets
COPY requirements.txt YTSpammerPurge.py ./
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./YTSpammerPurge.py" ]

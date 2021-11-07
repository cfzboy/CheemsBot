FROM kenhv/kensurbot:debian

ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg opus-tools bpm-tools
RUN python -m pip install --upgrade pip
RUN python -m pip install wheel
RUN python -m pip install pytgcalls TgCrypto ffmpeg-python psutil

RUN wget -q https://github.com/ashisharmy/CheemsBot/archive/dev.tar.gz && \
    tar xf dev.tar.gz && rm dev.tar.gz

RUN set -ex \
    && git clone -b master https://github.com/ashisharmy/CheemsBot /root/userbot \
    && chmod 777 /root/userbot

WORKDIR /root/userbot/

CMD ["python3", "-m", "userbot"]

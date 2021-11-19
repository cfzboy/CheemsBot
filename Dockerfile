FROM kenhv/kensurbot:debian

RUN pip3 install --upgrade pip 
RUN python3 -m pip install -U yt-dlp
RUN set -ex \
    && git clone -b master https://github.com/ashisharmy/CheemsBot /root/userbot \
    && chmod 777 /root/userbot

WORKDIR /root/userbot/
RUN pip3 install -U -r requirements.txt
CMD ["python3", "-m", "userbot"]

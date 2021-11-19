FROM kenhv/kensurbot:debian

RUN pip3 install --upgrade pip 
RUN python3 -m pip install -U yt-dlp
RUN pip3 install git+https://github.com/yt-dlp/yt-dlp@master
RUN pip3 install youtube-search-python==1.4.9
RUN pip3 install py-tgcalls==0.8.1
RUN pip3 install youtube-dl
RUN pip3 install ffmpeg-python
RUN set -ex \
    && git clone -b master https://github.com/ashisharmy/CheemsBot /root/userbot \
    && chmod 777 /root/userbot

WORKDIR /root/userbot/

CMD ["python3", "-m", "userbot"]

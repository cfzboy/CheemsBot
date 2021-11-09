FROM kenhv/kensurbot:debian

RUN pip3 install --upgrade pip 
RUN pip3 install --no-cache-dir -U -r requirements.txt
RUN set -ex \
    && git clone -b master https://github.com/ashisharmy/CheemsBot /root/userbot \
    && chmod 777 /root/userbot

WORKDIR /root/userbot/

CMD ["python3", "-m", "userbot"]

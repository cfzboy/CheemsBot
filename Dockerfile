FROM gamerfuckerofficial/cheemsbot:buster

RUN pip3 install --upgrade pip 
RUN set -ex \
    && git clone -b master https://github.com/TysonOfc/CheemsBot /root/userbot \
    && chmod 777 /root/userbot

WORKDIR /root/userbot/

CMD ["python3", "-m", "userbot"]

FROM JMTHON-AR/JM-THON:alpine

#clonning repo 
RUN git clone https://dashboard.heroku.com/new?template=https://github.com/STARK-LUCIFER/sajad.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]

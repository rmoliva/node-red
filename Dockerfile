FROM nodered/node-red:latest
USER root
RUN apk add --no-cache ffmpeg
RUN apk add --no-cache git


RUN apk add gd-dev
# RUN git clone git@github.com:fsphil/fswebcam.git & cd fswebcam & ./configure --prefix=/usr & make & make install
RUN git clone https://github.com/fsphil/fswebcam.git && cd fswebcam && ./configure --prefix=/usr && make && make install


USER node-red

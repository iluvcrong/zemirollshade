FROM python:3

# set working directory
WORKDIR /usr/src/app

# copy local files
COPY . .

# run
RUN \
  apt-get update && \
  apt-get install jq libglib2.0-dev -y && \
  python3 -m pip install -r requirements.txt && \
  chmod +x run.sh

CMD [ "./run.sh" ]

# ports and volumes
VOLUME /config

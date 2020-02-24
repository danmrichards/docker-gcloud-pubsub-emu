FROM google/cloud-sdk:281.0.0-alpine

ENV PORT=8085
ENV DATA_DIR="/opt/pubsub"
ENV PROJECT_ID=""

COPY pubsub.sh /opt/

RUN apk add --no-cache openjdk8-jre && \
  gcloud --quiet components install beta pubsub-emulator && \
  gcloud components update && \
  mkdir -p ${DATA_DIR} && \
  chmod +x /opt/pubsub.sh

CMD ["/opt/pubsub.sh"]

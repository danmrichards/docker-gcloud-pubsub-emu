# Docker Google Cloud Pub/Sub Emulator
A Docker container for running the Google Cloud Pub/Sub Emulator

## Usage
Run the container:
```bash
$ docker run -d --name pubsub danmrichards/docker-gcloud-pubsub-emu:latest
```

Or via `docker-compose`:
```yaml
version: "3"
services:
  pubsub:
    image: danmrichards/docker-gcloud-pubsub-emu:latest
```

## Configuration
The container supports the following environment variables for configuration. These can be passed via the `-e` flag to `docker run` or defined in the `environment` section of `docker-compose.yml`

| Variable     | Description                                                                                                            | Default       |
|--------------|------------------------------------------------------------------------------------------------------------------------|---------------|
| `PORT`       | The port on which the Pub/Sub emulator will listen                                                                     | `8085`        |
| `DATA_DIR`   | The directory to be used to store/retrieve data/config for an emulator run                                             | `/opt/pubsub` |
| `PROJECT_ID` | A project ID to configure the Pub/Sub emulator to use. Can be any valid string, does not need to be a real project ID. | N/A           |

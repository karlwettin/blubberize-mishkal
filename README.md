## prepare.sh

* Clones (or pulls existing) repositories to `./src`

## build.sh

* Creates the Docker image from Blubber YAML.

## run.sh

* Starts the Docker image on local Docker.

## Regading insecurity of Blubber

This is an insecure Blubber service as Mishkal is writing logs to the disk.
We could get around this by patching `src/mishkal/interfaces/web/mishkal-webserver.py`

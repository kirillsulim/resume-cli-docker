# resume-cli-docker
Docker wrapper for https://github.com/jsonresume/resume-cli

## How to run

Run following command from directory with `resume.json` file:

```sh
docker run -u $(id -u ${USER}):$(id -g ${USER}) --rm -v $(pwd):/data resume export /data/out.html -t <theme-name> -r /data/resume.json

```
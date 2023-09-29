.DEFAULT_GOAL := help

source ?=

.PHONY: help
help:
	@grep -E '(^[a-zA-Z0-9_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

.PHONY: build
build: Dockerfile
	docker build -t ffmpeg-subs:latest .

.PHONY: convert
convert: build ## convert video files to video files with provided subtitiles, source=<source video files directory>
	docker run --rm -it --name ffmpeg-subs -v$(shell pwd):/app -v$(source):/app/source ffmpeg-subs /app/ffmpeg-subs -i /app/source -v

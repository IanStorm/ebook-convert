# Ebook convert 📕🔄📗

[![GitHub Actions](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2FIanStorm%2Febook-convert%2Fbadge%3Fref%3Dmain&style=flat&label=build&logo=none)](https://actions-badge.atrox.dev/IanStorm/ebook-convert/goto?ref=main)
[![Docker Pulls](https://img.shields.io/docker/pulls/ianstorm/ebook-convert)](https://hub.docker.com/r/ianstorm/ebook-convert)
[![Docker Stars](https://img.shields.io/docker/stars/ianstorm/ebook-convert)](https://hub.docker.com/r/ianstorm/ebook-convert)

A Docker image for converting ebooks.

**🐳 Make sure you have installed *Docker*.**


## Features

* ✔️ EPUB ➡ MOBI


## How to use in "production"? 👨‍💼 👩‍💼

1. Follow ["How to get a pre-built Docker image?"](#-how-to-get-a-pre-built-docker-image-☁️).
2. Create a folder with the following file/folder structure:
	* An `input` folder containing ebooks in the respective format
	* An (empty) `output` folder
2. `cd` inside that folder (containing the two sub-folders).
2. Run the Docker image:
```
$	docker run \
		--rm \
		-t \
		-v ${PWD}/:/mnt/calibre/ \
		ianstorm/ebook-convert
```
5. Take the converted ebooks from the *output folder*.


## How to develop? 👨‍💻 👩‍💻

Make sure you have installed *Visual Studio Code*.

1. Clone this repository.
2. `cd` inside the cloned folder.
2. Build the Docker image: Run the vscode task `build`.


## Appendix


### How to get a pre-built Docker image? ☁️

Get the latest Docker image from Docker Hub:
```
$	docker pull ianstorm/ebook-convert:latest
```


### Sources

* [How to convert EPUB to MOBI](https://askubuntu.com/a/396400)

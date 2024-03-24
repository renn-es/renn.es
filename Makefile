dev:
	hugo server -D --disableFastRender

build:
	hugo --cleanDestinationDir

deploy: build
	rsync -avx --delete public/ risitas@cocinero:./renn.es/

dev:
	hugo server -D --disableFastRender

deploy:
	hugo
	rsync -avx --delete public/ risitas@cocinero:./renn.es/


dev:
	hugo server -D --disableFastRender

deploy:
	hugo
	rsync -avx --delete public/ cocinero:./renn.es/


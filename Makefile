deploy:
	hugo
	rsync -avx --delete public/ cocinero:./renn.es/


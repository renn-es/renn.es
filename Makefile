deploy:
	hugo
	rsync -avx --delete public/ deploy:./renn.es/


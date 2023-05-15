deploy:
	hugo
	rsync -avx --delete public/ deploy:./www/renn.es/


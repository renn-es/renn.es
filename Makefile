dev:
	hugo server -D --disableFastRender

build:
	if [[ $$(git status --porcelain) ]]; then \
		echo "You have unstaged changes, please stash first"; \
		echo "Run the \`sd\` target to stack and deploy."; \
		exit 1; \
	fi
	hugo --cleanDestinationDir

sd:
	git stash --include-untracked
	make deploy
	git stash pop

deploy: build
	rsync -avx --delete public/ risitas@cocinero:./renn.es/

format:
	prettier content --write

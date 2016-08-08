REPO="git@github.com:atosatto/atosatto.github.io.git"
DEPLOY_BRANCH="gh-pages"

all:
	@cat README.md

post:
	@echo "\033[0;32mCreating a new blog post...\033[0m"
	@hugo new posts/new-post.md -k post

talk:
	@echo "\033[0;32mCreating a new talk reference...\033[0m"
	@hugo new talks/new-talk.md -k talks

build:
	@echo "\033[0;32mBuilding the website...\033[0m"
	@hugo

deploy:
	@echo "\033[0;32mDeploying updates to Github...\033[0m"
	bin/deploy

.PHONY: all post talk deploy build

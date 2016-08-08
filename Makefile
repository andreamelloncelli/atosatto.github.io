REPO="git@github.com:atosatto/tosatto.me.git"
DEPLOY_BRANCH="gh-pages"

all:
	@cat README.md

post:
	@echo "\033[0;32mCreating a new blog post...\033[0m"
	@hugo new posts/new-post.md -k post

talk:
	@echo "\033[0;32mCreating a new talk reference...\033[0m"
	@hugo new talks/new-talk.md -k talks
	exit 0

init:
	@echo "\033[0;32mCreating the deployment branch...\033[0m"
	# Create a new orphand branch (no commit history) named gh-pages
	git checkout --orphan $(DEPLOY_BRANCH)
	# Unstage all files
	git rm --cached $(shell git ls-files)
	# Grab one file from the master branch so we can make a commit
	git checkout master README.md
	# Add and commit that file
	git add README.md
	git commit -m "INIT: initial commit on gh-pages branch"
	# Push to remote gh-pages branch
	git push origin $(DEPLOY_BRANCH)
	# Return to master branch
	git checkout master
	# Add the gh-pages branch of the repository. It will look like a folder named public
	git subtree add --prefix=public $(REPO) $(DEPLOY_BRANCH) --squash
	# Pull down the file we just committed. This helps avoid merge conflicts
	git subtree pull --prefix=public $(REPO) $(DEPLOY_BRANCH)

build:
	@echo "\033[0;32mBuilding the website...\033[0m"
	@hugo

deploy: build
	@echo "\033[0;32mDeploying updates to Github...\033[0m"
	git subtree push --prefix=public $(REPO) $(DEPLOY_BRANCH)

.PHONY: all post talk init deploy build

.PHONY: local local-clean

local:
	docker build -t dylan.crees.io/site . && \
	docker run -it --rm -p 8080:8080 -v $$PWD:/site dylan.crees.io/site

local-clean:
	rm -rf _site .jekyll-cache .sass-cache Gemfile.lock

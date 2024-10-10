build:
	docker buildx build --platform linux/amd64,linux/arm64 -t slspeek/lintr .

test: build
	docker run slspeek/lintr R -q -e "library(lintr)"

.ONESHELL:
push: test
	docker login
	docker push slspeek/lintr
	
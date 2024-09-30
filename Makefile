build:
	docker build . -t slspeek/lintr

test: build
	docker run slspeek/lintr R -q -e "library(lintr)"
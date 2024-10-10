FROM debian:12.7

RUN apt-get update && \
    apt-get -y install r-base
RUN apt-get install -y r-cran-lintr

CMD ["bash"]

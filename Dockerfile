FROM debian:12.7

RUN apt-get update
RUN apt-get install -y r-base r-cran-lintr && apt-get clean

CMD ["bash"]

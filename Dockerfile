FROM ghcr.io/amirulsdockerhub/ultr01d_ub_docker:latest

COPY . .

RUN git clone https://github.com/rootuttu/vik_ub

RUN chmod +x config.sh

RUN ./config.sh

CMD ["bash", "startup"]

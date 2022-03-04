FROM ghcr.io/mesuk2043/pagladoggy:latest

RUN git clone https://github.com/rootuttu/vik_ub

COPY . .

CMD ["bash", "startup"]

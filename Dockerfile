FROM ghcr.io/amirulandalib/whatisthis:latest

RUN git clone https://github.com/rootuttu/vik_ub

COPY . .

CMD ["bash", "startup"]

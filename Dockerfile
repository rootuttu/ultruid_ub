FROM ghcr.io/amirulandalib/whatisthis:latest

COPY . .

RUN git clone https://github.com/rootuttu/vik_ub

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "startup"]

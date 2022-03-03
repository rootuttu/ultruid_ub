FROM ghcr.io/amirulandalib/whatisthis:latest

# set timezone
ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    # cloning the repo and installing requirements.
    && git clone https://github.com/rootuttu/vik_ub /root/FUCK/ \
    && pip3 install --no-cache-dir -r root/FUCK/requirements.txt \
    && pip3 install av --no-binary av

# changing workdir
WORKDIR /root/FUCK/

# start the bot
CMD ["bash", "startup"]

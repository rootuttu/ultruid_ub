FROM ghcr.io/amirulsdockerhub/ultr01d_ub_docker:latest

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    # cloning the repo and installing requirements.
    && git clone https://github.com/rootuttu/vik_ub.git /root/fukk/ \
    && pip3 install --no-cache-dir -r root/fukk/requirements.txt \
    && pip3 install av --no-binary av

# changing workdir
WORKDIR /root/fukk/

# start the bot
CMD ["bash", "startup"]

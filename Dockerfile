FROM alpine
RUN apk add curl
RUN cd /usr/local/bin/ \
        && curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
        && chmod +x kubectl \
        && mkdir ~/.kube

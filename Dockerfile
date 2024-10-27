FROM bitnami/minideb:bookworm
RUN apt-get update && apt-get install -y git gh curl python3
RUN curl -fsSL https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo && \
    chmod a+x /usr/local/bin/repo

RUN git config --global user.name "github-actions" && git config --global user.email "github-actions@github.com"

ENTRYPOINT ["bash"]

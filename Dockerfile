FROM bitnami/minideb:bookworm
RUN apt-get update && apt-get install -y git gh repo
RUN curl -fsSL https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo && \
    chmod a+x /usr/local/bin/repo

RUN useradd -m codespaces
USER codespaces

ENTRYPOINT ["bash"]
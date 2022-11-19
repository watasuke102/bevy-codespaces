FROM ubuntu:22.04

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=${USER_UID}

ENV LANG=C
ENV PATH="/home/${USERNAME}/.cargo/bin:$PATH"

WORKDIR /bevy

RUN apt-get update && apt-get install -y \
  curl git sudo zsh build-essential librust-openssl-dev

# create user
# https://code.visualstudio.com/remote/advancedcontainers/add-nonroot-user#_creating-a-nonroot-user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER ${USERNAME}

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y \
    && rustup target install wasm32-unknown-unknown \
    && cargo install wasm-bindgen-cli

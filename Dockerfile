# Use the latest Amazon Linux image
FROM amazonlinux:latest

# Update the package list and install necessary packages
RUN dnf -y update && \
    dnf -y install git cmake make clang gcc-c++ libtool autoconf automake gettext zsh nodejs && \
    dnf clean all && \
    adduser lukecollins

WORKDIR /tmp
RUN git clone https://github.com/neovim/neovim.git && \
    cd neovim && \
    make CMAKE_BUILD_TYPE=RelWithDebInfo && \
    make install

# Switch to the non-root user
USER lukecollins

# Set the working directory
WORKDIR /home/lukecollins

# Add nixos home packages bins to PATH
ENV PATH $PATH:/home/lukecollins/.nix-profile/bin

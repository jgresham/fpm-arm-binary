#!/bin/bash

apt-get update
apt-get remove --purge --auto-remove cmake
apt-get update
apt-get install -y software-properties-common lsb-release curl
apt-get clean all
curl https://apt.kitware.com/kitware-archive.sh | bash
apt-get install -y cmake

apt-get -y install sudo git curl build-essential pkg-config bison flex autoconf  \
   binutils-dev libevent-dev acl-dev libfmt-dev libjemalloc-dev libiberty-dev    \
   libdouble-conversion-dev liblz4-dev liblzma-dev libssl-dev libunwind-dev      \
   libboost-filesystem-dev libboost-program-options-dev libboost-system-dev      \
   libboost-iostreams-dev  libboost-date-time-dev libboost-context-dev           \
   libboost-regex-dev libboost-thread-dev libbrotli-dev libdwarf-dev libelf-dev  \
   libgoogle-glog-dev libffi-dev libgdbm-dev libyaml-dev libncurses-dev          \
   libreadline-dev libncurses-dev libreadline-dev ruby-dev ruby-bundler          \
   libutfcpp-dev


apt install -y gcc-10 g++-10
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 10
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 10


apt install -y clang-12
update-alternatives --install /usr/bin/clang clang /usr/bin/clang-12 150
update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-12 150


git clone https://github.com/jordansissel/fpm.git
gem install tebako
tebako press --root='./fpm' --entry=fpm --output=fpm-arm64-exe -R 2.7.8
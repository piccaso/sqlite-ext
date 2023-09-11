FROM ubuntu:22.04
RUN apt-get update 
 && apt-get install -y --no-install-recommends libc-dev gcc gcc-mingw-w64-x86-64 wget ca-certificates xz-utils\
 && rm -rf /var/lib/apt/lists/*
RUN wget https://ziglang.org/download/0.11.0/zig-linux-x86_64-0.11.0.tar.xz\
 && tar xvf zig-linux-x86_64-0.11.0.tar.xz\
 && ln -s `pwd`/zig-linux-x86_64-0.11.0/zig /bin/zig\
 && chmod ugo+x /bin/zig
ADD src/ /src
WORKDIR /src
RUN chmod +x *.sh && ./build.sh && ls -lah
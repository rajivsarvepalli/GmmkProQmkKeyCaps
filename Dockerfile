FROM ubuntu
RUN apt-get update
RUN apt install -y git python3-pip
RUN apt install build-essential
RUN apt-get -y install gcc unzip wget zip gcc-avr binutils-avr avr-libc dfu-programmer dfu-util gcc-arm-none-eabi binutils-arm-none-eabi libnewlib-arm-none-eabi
RUN python3 -m pip install --user qmk
ENV PATH="/root/.local/bin:$PATH"
RUN qmk setup -y
CMD qmk compile -kb gmmk/pro -km default
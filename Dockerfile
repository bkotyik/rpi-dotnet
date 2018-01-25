FROM resin/rpi-raspbian
RUN apt-get -y update
RUN apt-get -y install libunwind8 wget
RUN wget https://dotnetcli.blob.core.windows.net/dotnet/Runtime/release/2.0.0/dotnet-runtime-latest-linux-arm.tar.gz
RUN mkdir /opt/dotnet && tar -xvf dotnet-runtime-latest-linux-arm.tar.gz -C /opt/dotnet && ln -s /opt/dotnet/dotnet /usr/local/bin
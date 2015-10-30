FROM hypriot/rpi-golang 

MAINTAINER Tobias Stevenson <codenamekt@gmail.com> 

COPY . /go/src/github.com/TheRaspBin/consul-cli
RUN cd /go/src/github.com/TheRaspBin/consul-cli \
	&& export GOPATH=/go \
	&& go get \
	&& go build -o /bin/consul-cli \
	&& rm -rf /go

#ENTRYPOINT [ "/bin/consul-cli" ]

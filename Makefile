all:

compile-native:
	./run-book-native.sh duckumentation docs

compile-docker:
	docker pull andreacensi/mcdp_manual:1 
	./run-book-docker.sh duckumentation docs

install-docker-ubuntu16:
	sudo apt-get remove docker docker-engine docker.io
	sudo apt-get install \
		apt-transport-https \
		ca-certificates \
		curl \
		software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo apt-get update
	sudo apt-get install docker-ce
	sudo adduser -G docker $USER


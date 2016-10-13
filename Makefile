#
# Parameters
#

# Name of the docker executable
DOCKER = docker

# Docker organization to pull the images from
ORG = mayeulchassagnard

# Name of image
IMAGE = docker-centos-build

#Version of GIT
GIT_VERSION = 2.5.0


build:
	bash ./download_git.sh $(GIT_VERSION)
	docker build \
		--build-arg GIT_VERSION=$(GIT_VERSION) \
		-t $(ORG)/$(IMAGE) .

push:
	docker push $(ORG)/$(IMAGE)

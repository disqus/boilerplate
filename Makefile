BOILERPLATE_ABI := 2018.9.0

TAG_PARTS ?= $(subst -, ,$@)
BUILD_ARGS ?= --build-arg BOILERPLATE_ABI=$(BOILERPLATE_ABI) \
			  --build-arg BOILERPLATE_PARENT_TAG=$(firstword $(TAG_PARTS))

EXTRA_TAGS += $(foreach TAG,$(UBUNTU_TAGS),$(TAG)-$(BOILERPLATE_ABI)=$(TAG))

include Makefile.docker


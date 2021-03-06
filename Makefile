# Makefile to build the command lines and tests in Seele project.
# This Makefile doesn't consider Windows Environment. If you use it in Windows, please be careful.

all: discovery node client
discovery:
	go build -o ./build/discovery ./cmd/discovery
	@echo "Done discovery building"

node:
	go build -o ./build/node ./cmd/node 
	@echo "Done node building"

client:
	go build -o ./build/client ./cmd/client
	@echo "Done client building"

.PHONY: discovery node client

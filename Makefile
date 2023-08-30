# Targets for Docker

build:
	docker build -f Dockerfile -t myname  --progress=plain .

run:
	docker run -ti -v `pwd`:/io myname bash

access:
	@echo "View files in container at http://localhost:8123"
	docker run -ti -p 8123:8000 myname python3 -m http.server

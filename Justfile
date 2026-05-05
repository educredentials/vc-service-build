runtime := `(command -v podman >/dev/null 2>&1 && echo podman || echo docker)`

build:
	git submodule update --init --recursive
	cp Dockerfile ssi-agent-source/Dockerfile
	cp config.yaml ssi-agent-source/config.yaml
	{{runtime}} build -t ssi-agent-local -f ssi-agent-source/Dockerfile ssi-agent-source

clean:
	rm -f ssi-agent-source/Dockerfile ssi-agent-source/config.yaml

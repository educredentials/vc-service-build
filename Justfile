runtime := `(command -v podman >/dev/null 2>&1 && echo podman || echo docker)`

build:
	git submodule update --init --recursive
	{{runtime}} build -t ssi-agent-local -f Dockerfile .
	{{runtime}} build -t ssi-agent-local-init -f Dockerfile.init .

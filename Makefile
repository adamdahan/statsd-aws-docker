build:
	docker build --no-cache -t graphcool/graphcool-statsd-aws:latest .

build-local:
	docker build -f Dockerfile.local -t graphcool/graphcool-statsd-aws:local .

push:
	docker push graphcool/graphcool-statsd-aws:latest
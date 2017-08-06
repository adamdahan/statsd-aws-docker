build:
	docker build --no-cache -t graphcool/graphcool-statsd-aws:latest .

build-local:
	docker build -f Dockerfile.local -t graphcool/graphcool-statsd-aws:local .

push:
	docker push graphcool/graphcool-statsd-aws:latest

run-prod:
	docker run -it --env-file=.dockerenv -p 8125:8125/udp graphcool/graphcool-statsd-aws:latest
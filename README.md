# Node StatsD docker image with AWS backend

# Usage
- `cp config.js.example config.js`
- Fill in credentials
- Build image with `make build-local` (dev) or `make build` (prod)
- `make push` to push the latest build to dockerhub
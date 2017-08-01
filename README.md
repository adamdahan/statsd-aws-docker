# Node StatsD docker image with AWS backend

# Usage
- `cp config.js.example config.js`
- Fill in credentials
- Build image with `make build-local` (dev) or `make build` (prod)
- `make push` to push the latest build to dockerhub

# Q&A
Q: Why the --no-cache on build?
A: Docker caches the npm install of the git repo. To fetch the latest we need to disable caching, unfortunately.
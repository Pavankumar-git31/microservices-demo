# Fixed: switched from node:18-alpine to node:20-slim
# Reason: pprof native addon has no pre-built musl binary for Node 18 on Alpine,
#         and node-gyp source compile fails without Python.
#         node:20-slim (Debian) resolves both issues.

FROM node:20-slim

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

# paymentservice listens on gRPC port 50051
EXPOSE 50051

ENV PORT=50051

# Disable Google Cloud Profiler (pprof) in non-GCP environments
ENV DISABLE_PROFILER=1

ENTRYPOINT ["node", "index.js"]

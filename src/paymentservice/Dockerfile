FROM node:20-slim

WORKDIR /app

COPY package.json ./

# Install build tools needed for native addons,
# then ignore pprof scripts since profiler is disabled
RUN apt-get update && apt-get install -y python3 make g++ \
    && npm install --omit=dev --ignore-scripts \
    && apt-get purge -y python3 make g++ \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

COPY . .

EXPOSE 50051

ENV PORT=50051
ENV DISABLE_PROFILER=1

ENTRYPOINT ["node", "index.js"]

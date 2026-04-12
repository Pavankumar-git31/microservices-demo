# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# FIXED: node:18-alpine → node:20-slim
# WHY:   Alpine uses musl libc → no pre-built pprof binary → node-gyp
#        tries to compile from source → needs Python → fails.
#        node:20-slim (Debian) has pre-built binaries AND satisfies
#        thread-stream's "node >= 20" engine requirement.
FROM node:20-slim

WORKDIR /app

# Copy dependency manifest first (better layer caching)
COPY package.json ./

# Install dependencies
RUN npm install --omit=dev

# Copy all source files
COPY . .

# paymentservice listens on gRPC port 50051
EXPOSE 50051

ENV PORT=50051
ENV DISABLE_PROFILER=1

ENTRYPOINT ["node", "index.js"]

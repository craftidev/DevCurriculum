#!/bin/bash
# Start browser-sync
npx browser-sync start --proxy "devcurriculum_web_frontend" --files "/home/node" &
# Start TypeScript compiler in watch mode
npx tsc --watch
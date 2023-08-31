## Docker compose build, languages & frameworks
### Dev
- nginx container with shared volume to get the static content from the node container
- node container with Vite bundler/vanilla TS/pico CSS
### Prod
- A multi stage build compile TypeScript, sanitize CSS and minify and serves it to nginx the only container remaining.
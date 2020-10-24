# MongoDB WebSocket Reactive Chat build scripts

This repo contains build and run scripts for this project:
<br>
back: [Pure Reactive SpringBoot WebFlux MongoDB WebSocket Chat](https://github.com/alexshavlovsky/spring-mongo-reactive-chat).
<br>
front: [Angular 9 PrimeNg chat client](https://github.com/alexshavlovsky/primeng-chat-client.git).

- prerequisites: maven, git, java8, docker, docker-compose
- OS supported: win, linux, mac
- containers: MongoDB + SpringBoot app (mongo GridFS attachments, ffmpeg video transcoder) + angular client (nginx)

### Usage
```
1. git clone https://github.com/alexshavlovsky/mongo-chat-ci-template.git
2. cd mongo-chat-ci-template
3. Linux:   sh build.sh
   Windows: build.cmd
```

## Technology Stack
Component                 | Technology
---                       | ---
Backend engine            | Spring Boot WebFlux
Database                  | Reactive MongoDB
Chat protocol             | Reactive WebSockets
Server side thumbnails    | [Thumbnailator - a thumbnail generation library for Java](https://github.com/coobird/thumbnailator)
PDF documents thumbnails  | [PDF renderer - Java library for rendering PDF documents](https://github.com/katjas/PDFrenderer)
Video files thumbnails    | [The JAVE (Java Audio Video Encoder) library is Java wrapper on the ffmpeg project](https://github.com/a-schild/jave2)
HTML video transcoder     | Background service using JAVE ffmpeg wrapper (x264 and WEBM codecs are supported)
Video streaming           | Endpoint that supports partial requests
Caching                   | Caffeine in-memory cache
Prod packaging            | Docker Engine Container, Alpine Linux, OpenJDK, SpringBoot JAR
JS framework              | Angular 10
UI components             | Prime Ng 10
Chat protocol             | WebSockets
Video streams player      | [A simple HTML5, YouTube and Vimeo player](https://github.com/sampotts/plyr)

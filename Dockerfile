FROM cirrusci/flutter:3.0.0 AS build-env

RUN flutter config --enable-web \
    && sudo apt-get update \
    && sudo apt-get install -y chromium-browser \
    && sudo rm -rf /var/lib/apt/lists/*

RUN mkdir /app/
COPY . /app/
WORKDIR /app/
RUN flutter build web

FROM nginx:stable
COPY --from=build-env /app/build/web /usr/share/nginx/html
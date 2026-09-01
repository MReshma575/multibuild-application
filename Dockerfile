FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    python3 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Only copy the application files
COPY app.js app.py /app/

EXPOSE 3000 5000

# Run both applications concurrently inside the shell entrypoint
CMD node app.js & python3 app.py & wait


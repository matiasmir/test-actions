# Use Alpine Linux as the base image
FROM alpine:latest

# Set a working directory
WORKDIR /app

# Create a simple shell script to display the message
RUN echo '#!/bin/sh' > hello.sh && \
    echo 'echo "Hello, World!"' >> hello.sh && \
    chmod +x hello.sh

# Set the entrypoint to run our script
ENTRYPOINT ["/app/hello.sh"]

# Container image that runs your code
FROM --platform=arm64 dart:stable-sdk AS stage

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY dart_compile_script.sh /dart_compile_script.sh

RUN mkdir /data
# Create volume to save builds
VOLUME [ "/data" ]

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/dart_compile_script.sh"]

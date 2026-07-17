# `uv` installation and how to use it

Details can be seen in the [01-agentic-rag](README.md) section of the [README.md](README.md) file.

# run jupyterlab:

    1. To run "/bin/bash" in container that it is being executed run the next:

        `docker exec -it <container_id> sh -c "/bin/bash"`
        
    2. To run jupyterlab inside a container or in a EC2 instance using `uv`:

        `uv run jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root`
    
# Build the Docker image with some arguments.

`docker build -t <docker-image> --build-arg ARG1=<argument-value> .`

# Next steps:

1. Add payment details to use openai models and test the api is working correctly. Done.
2. Fix Rag class.
3. Create a Linux development environment in a Docker container with the project requirements.
4. Remove uv duplicate information in notes.
5. Update Next steps in notes.md
6. Add notes to build a docker image with arguments
7. Create CI/CD workflow
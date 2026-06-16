1. install uv
2. install python 3.15
3. uv init
4. add dependencies to requirements.txt file
5. uv add -r requirements.txt
6. uv run main.py
7. run jupyterlab:

    1. To run "/bin/bash" in container that it is being executed run the next:

        `docker exec -it <container_id> sh -c "/bin/bash"`
        
    2. To run jupyterlab inside a container or in a EC2 instance:

        `jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root`

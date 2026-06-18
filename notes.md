# `uv` installation and how to use it

`uv` is a very fast python package and project manager, written in Rust 
and it is a more convenient tool to replace for example `pip` `pip-tools` `pipx`
`poetry` `pyenv` `twine` `virtualenv`. 
[uv documentation](https://docs.astral.sh/uv/).

To start using uv we need to follow simple steps:

1. Install uv:

    `python -m pip install uv`

2. (Optional) install a specific python version, in this case 3.15:

    `uv python install 3.15`

    if you want to install the latest version you can run:

    `uv python install`

3. To initialize a project in the working directory we run:

    `uv init`

    It will create the following files in case you don't have them yet:

    ```
    ├── .git/
    ├── .gitignore
    ├── .python-version
    ├── README.md
    ├── main.py
    └── pyproject.toml
     ```

4. Add the packages you need. There's 2 ways of doing it.

    1. Add all the packages to the `requirements.txt` file and then run:

        `uv add -r requirements.txt`
    
    2. For the second option let's suppose we want to add `requests` and
    `jupyterlab`. In this case we just run:

        `uv add requests jupyterlab`

5. Finally we execute our main.py to create a virtual environment with
all the dependencies we have added and a `uv.lock` file. We run:

    `uv run main.py`

    A complete list of the files created are the next:

    ```
    .
    ├── .git/
    ├── .venv/
    │   ├── bin
    │   ├── lib
    │   └── pyvenv.cfg
    ├── .gitignore
    ├── .python-version
    ├── README.md
    ├── main.py
    ├── pyproject.toml
    └── uv.lock
    ```

# run jupyterlab:

    1. To run "/bin/bash" in container that it is being executed run the next:

        `docker exec -it <container_id> sh -c "/bin/bash"`
        
    2. To run jupyterlab inside a container or in a EC2 instance using `uv`:

        `uv run jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root`

# Next steps:

1. Add payment details to use openai models and test the api is working correctly

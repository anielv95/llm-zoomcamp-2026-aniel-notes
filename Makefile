install:
	pip install --upgrade pip &&\
		pip install uv &&\
		uv python install 3.15 &&\
		uv init &&\
		uv add -r requirements.txt &&\
		uv run main.py

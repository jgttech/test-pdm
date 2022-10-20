# Build stage
FROM python:3.10.8-slim-buster AS build

WORKDIR /app

COPY pyproject.toml pdm.lock pyproject.toml /app/
COPY . /app/

RUN pip install -U pip setuptools wheel
RUN pip install pdm
RUN pdm install
RUN pdm sync

CMD ["pdm", "start"]

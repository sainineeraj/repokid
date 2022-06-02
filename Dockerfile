FROM python:3.9-slim-buster

WORKDIR /usr/src/app
COPY . .

RUN pip install bandit coveralls && \
    pip install . && \
    pip install -r requirements-test.txt && \
    python setup.py develop && \
    repokid config config.json # Generate example config

ENTRYPOINT ["repokid"]

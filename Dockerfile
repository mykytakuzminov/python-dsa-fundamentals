FROM python:3.14-slim

WORKDIR /app

COPY pyproject.toml .
RUN pip install --no-cache-dir . pytest

COPY . .

CMD ["pytest", "tests"]

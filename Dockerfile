FROM python:3.12-slim
ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1
WORKDIR /srv
COPY pyproject.toml ./
COPY app ./app
COPY examples ./examples
RUN pip install --no-cache-dir ".[postgres]" && \
    mkdir -p /srv/data && chown -R 10001:10001 /srv
USER 10001
EXPOSE 8000
HEALTHCHECK --interval=30s --timeout=4s --start-period=20s \
 CMD python -c "import urllib.request; urllib.request.urlopen('http://127.0.0.1:8000/healthz',timeout=3)" || exit 1
CMD ["uvicorn", "app.api:app", "--host", "0.0.0.0", "--port", "8000"]

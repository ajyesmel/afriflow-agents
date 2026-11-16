install:
	python -m pip install -e ".[dev]"
test:
	python -m pytest -q
run:
	uvicorn app.api:app --reload --host 127.0.0.1 --port 8000
seed:
	python scripts/seed_demo.py

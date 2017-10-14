setup:
	python3 -m venv ~/.devml

install:
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=devml --cov=dml tests/*.py
	#PYTHONPATH=. && py.test --nbval-lax notebooks/*.ipynb

lint:
	pylint --disable=R,C devml dml

all: install lint test
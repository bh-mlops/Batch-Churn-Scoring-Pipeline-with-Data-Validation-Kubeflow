VENV = venv
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip

PIPELINE_PATH = kfp-hello-world

# Create venv and install requirements
setup:
	python3 -m venv $(VENV)
	$(PIP) install -r kfp-hello-world/requirements.txt

compile-kfp:
	$(PYTHON) kfp-hello-world/hello_world.py
# Run tests using the venv python
test:
	$(PYTHON) -m pytest tests/

clean:
	rm -rf $(VENV)
	find . -type d -name "__pycache__" -delete
VENV = venv
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip
KFP = $(VENV)/lib/python3.14/site-packages/kfp

PIPELINE_PATH = kfp-hello-world

# Create venv and install requirements
setup:
	python3 -m venv $(VENV)
	$(PIP) install -r kfp-hello-world/requirements.txt

compile-kfp:
	source $(VENV)/bin/activate && kfp dsl compile --py kfp-hello-world/hello_world.py --output my_pipeline.yaml

push-to-kubeflow:
	source $(VENV)/bin/activate && kfp pipeline upload -p hello-world-pipeline my_pipeline.yaml --endpoint http://localhost:3000
# Run tests using the venv python
test:
	$(PYTHON) -m pytest tests/

clean:
	rm -rf $(VENV)
	find . -type d -name "__pycache__" -delete
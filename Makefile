.DEFAULT_GOAL := test

.PHONY: venv
venv:
	bin/venv_update.py venv= -p python3 venv install= -r requirements-dev.txt -r requirements.txt bootstrap-deps= -r requirements-bootstrap.txt >/dev/null
	venv/bin/pre-commit install

.PHONY: test
test:

.PHONY: clean
clean: ## Clean working directory
	find . -iname '*.pyc' | xargs rm -f
	rm -rf ./venv
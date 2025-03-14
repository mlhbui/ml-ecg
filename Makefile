create-dev:
	rm -rf env
	python3 -m venv env
	( \
		. env/bin/activate; \
		pip install --upgrade pip; \
		pip install -r requirements.txt; \
		poetry install --no-root; \
	)

activate:
	source ./env/bin/activate
    # type "deactivate" into terminal to exit the env

# build:
# 	. env/bin/activate; \
# 	poetry build; \
# 	pip install dist/*.tar.gz
.PHONY: create-env init install manual-install run

PORT = 8000

create-env:
	echo "Creating the virtual environment"
	python -m venv env

init:
	echo "Initializing the project"
	pyenv local 3.9.16
	source env/bin/activate

install:
	echo "Installing the project"
	pip install -r requirements.txt

manual-install:
	echo "Installing the project"
	pip install django
	pip install djangorestframework
	pip install djangogrpcframework
	pip install grpcio
	pip install grpcio-tools

run:
	echo "Running the project"
	python manage.py runserver 0.0.0.0:PORT

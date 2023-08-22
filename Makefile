.PHONY: run

deps:
	ansible-galaxy install -r requirements.yml

run: deps
	ansible-playbook playbook.yml -u root --private-key ~/.ssh/id_rsa -i 128.140.83.189, -v --start-at-task='Check if starship is installed'
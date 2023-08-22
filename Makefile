.PHONY: run

deps:
	ansible-galaxy install -r requirements.yml

run: deps
	ansible-playbook playbook.yml -u root --private-key ~/.ssh/id_rsa -i hosts.ini
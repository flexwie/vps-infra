.PHONY: config-run

config-deps:
	ansible-galaxy install -r config/requirements.yml

config-run: config-deps
	ansible-playbook config/playbook.yml -u root --private-key ~/.ssh/id_rsa -i config/hosts.ini
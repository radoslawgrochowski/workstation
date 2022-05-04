run:
	sudo ansible-playbook playbook.yml

test:
	docker build . -t workstation && docker run --rm -it workstation bash


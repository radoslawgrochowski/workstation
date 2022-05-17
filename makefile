# use the rest as arguments for "run"
RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
# ...and turn them into do-nothing targets
$(eval $(RUN_ARGS):;@:)

ansible:
	sudo ansible-playbook playbook.yml $(RUN_ARGS) 

.PHONY: run
run: ansible
	@echo ansible $(RUN_ARGS)

test:
	docker build . -t workstation && docker run --rm -it workstation bash 

install:
	sudo ansible-galaxy install -r requirements.yml

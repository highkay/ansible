ANSIBLE_PLAYBOOK_RUN:= ansible-playbook -i inventory -e PYTHONWARNINGS="ignore" -v 

.PHONY: init_workspace docker install_docker

docker:
	docker run --rm -it -v ~/.ssh:/root/.ssh -v $(CURDIR):/workspace -w /workspace -e ANSIBLE_HOST_KEY_CHECKING="False" --entrypoint=sh highkay/ansible

init_workspace: 
	$(ANSIBLE_PLAYBOOK_RUN) centos_install_workspace.yml

install_docker: 
	$(ANSIBLE_PLAYBOOK_RUN) centos_install_docker.yml

install_k8s: 
	$(ANSIBLE_PLAYBOOK_RUN) centos_install_k8s.yml

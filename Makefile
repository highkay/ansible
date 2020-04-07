RUN_IN_DOCKER:=docker run --rm -it -v ~/.ssh:/root/.ssh -v $(CURDIR):/workspace -w /workspace highkay/ansible:2.8.9

.PHONY: init docker k8s

init:
	${RUN_IN_DOCKER} -i inventory -v centos_install_workspace.yml

docker:
	${RUN_IN_DOCKER} -i inventory -v centos_install_docker.yml

k8s:
	${RUN_IN_DOCKER} -i inventory -v centos_install_k8s.yml

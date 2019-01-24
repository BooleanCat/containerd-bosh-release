.PHONY = deploy upload-local-release deploy-dev

deploy:
	bosh -n -d containerd deploy manifest/containerd.yml

upload-local-release:
	bosh create-release --name containerd --force
	bosh upload-release --name containerd

deploy-dev: upload-local-release deploy

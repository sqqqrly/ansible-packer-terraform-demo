# include .env
# export $(shell sed 's/=.*//' .env)

terraform-init:
	cd terraform && \
	terraform init && \
	cd -

terraform-plan:
	cd terraform && \
	terraform plan && \
	cd -

terraform-apply:
	cd terraform && \
	terraform apply && \
	cd -

packer-build:
	cd packer && \
	rm -rf output-ubuntu1804-qemu-iso/ && \
	packer build -only=qemu -var-file=ubuntu1804.json ubuntu.json && \
	cd -

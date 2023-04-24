SHELL = /bin/bash

ifdef K3D_DIR
K3D_DIRECTORY := $(K3D_DIR)
else
K3D_DIRECTORY:= /tmp
endif


.PHONY: cluster
cluster:
	k3d cluster create --config k3d/k3d-development-cluster.yaml

.PHONY: develop
develop: cluster apply

.PHONY: apply
apply:
	# First apply may fail if CRDs are not being applied in time
	- kubectl apply -k 00_init/development-secrets
	kubectl apply -k 00_init/development-secrets

.PHONY: clean
clean:
	- k3d cluster delete develop
	# The next commands may fail depending on user and dir permissions
	# This is slightly dangerous in case $${HOME} is not set, but deleting from /tmp/
	# shouldn't be a big problem
	- rm -rf $(K3D_DIRECTORY)/storage/*
	- sudo -n -- rm -rf $(K3D_DIRECTORY)/storage/*

.PHONY: new
new: clean develop

.PHONY: stop
stop:
	k3d cluster stop develop

.PHONY: start
start:
	k3d cluster start develop

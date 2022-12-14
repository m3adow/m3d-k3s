.PHONY: cluster
cluster:
	k3d cluster create --config k3d/k3d-development-cluster.yaml

.PHONY: develop
develop: cluster
	# First apply will fail due to CRDs not being applied in time
	- kubectl apply -k 00_init/development-secrets
	kubectl apply -k 00_init/development-secrets

.PHONY: clean
clean:
	- k3d cluster delete develop
	# The next commands may fail depending on user and dir permissions
	- rm -rf k3d/volumes/storage/*
	- sudo -n -- rm -rf k3d/volumes/storage/*

.PHONY: new
new: clean develop

.PHONY: stop
stop:
	k3d cluster stop develop

.PHONY: start
start:
	k3d cluster start develop

# My personal single-node K3s template

**Work in progress!**

Kubernetes manifests as well as some K3s/K3d configuration manifests intended for a "home production ready" single-node installation, including [Day 2 operations](https://codilime.com/blog/day-0-day-1-day-2-the-software-lifecycle-in-the-cloud-age/) tasks like Backups and keeping software, Helm Charts and images up to date.

Intended infrastructure scope:

- [x] cert-manager
- [x] Sealed Secrets
- [x] ~~Database (MariaDB)~~ _(succeeded by MySQL Operator)_
- [x] MySQL Operator + Database _(may become MySQL Cluster in the future)_
- [x] [DB-Operator](https://github.com/kloeckner-i/db-operator)
- [x] [Composable Operator](https://github.com/composable-operator/composable)
- [ ] [k8up](https://github.com/k8up-io/k8up) ❄❄❄ on hold for now ❄❄❄ (hoping for an imminent implementation of [k8up issue #319](https://github.com/k8up-io/k8up/issues/319))
- [x] [Flux](https://fluxcd.io/) _may be revisited in the future for image automation or notifications_
- [ ] [External DNS](https://github.com/kubernetes-sigs/external-dns)
- [ ] Prometheus + Alertmanager
- [ ] [Renovate](https://docs.renovatebot.com/)

Extended infrastructure scope (applications considered for later):

- [ ] [Calico](https://www.tigera.io/project-calico/)
- [ ] [ingress-nginx](https://kubernetes.github.io/ingress-nginx/)
- [ ] [k8s_gateway](https://github.com/ori-edge/k8s_gateway)
- [ ] [Goldilocks](https://goldilocks.docs.fairwinds.com/)
- [ ] [Hajimari](https://github.com/toboshii/hajimari)
- [ ] [Reloader](https://github.com/stakater/Reloader)

Application scope (subject to change):

- [ ] [Nextcloud](https://nextcloud.com/) _(Basic installation stuff done, customization WIP)_
- [ ] [Nitter](https://github.com/zedeus/nitter)
- [ ] [Tiny Tiny RSS](https://tt-rss.org/)
- [ ] [Firefox Sync](https://github.com/mozilla/fxa/)

Other tasks:

- [x] Create Makefile for bootstrapping

## Development

Development is done via [k3d](https://k3d.io/). I recommend to set ACLs for the `volumes` folder:

```bash
setfacl -Rdm ${USER}:rwx k3d/volumes/
```

This will prevent permission problems when `clean`ing the development environment.

- To create a new cluster on a fresh system, run `make develop` or `make new`
- To tear down the development cluster, run `make clean`
- To recreate a cluster run `make new`
- Starting/Stopping clusters can be done with `make start`/`make stop`

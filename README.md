# My personal single-node K3s template

**Work in progress!**

Kubernetes manifests as well as some K3s/K3d configuration manifests intended for a "home production ready" single-node installation, including [Day 2 operations][day-2] tasks like Backups and keeping software, Helm Charts and images up to date.

Intended infrastructure scope:

- [x] cert-manager
- [x] Sealed Secrets
- [x] ~~Database (MariaDB)~~ _(succeeded by MySQL Operator)_
- [x] MySQL Operator + Database _(may become MySQL Cluster in the future)_
- [x] [DB-Operator][db-operator]
- [x] [Composable Operator][composable-operator]
- [ ] [k8up][k8up] ❄❄❄ on hold for now ❄❄❄ (hoping for an imminent implementation of [k8up issue #319][k8up-issue-319])
- [ ] [Flux][flux]
- [ ] [External DNS][external-dns]
- [ ] Prometheus + Alertmanager
- [ ] [Renovate][renovate]

Extended infrastructure scope (applications considered for later):

- [ ] [Calico][calico]
- [ ] [ingress-nginx][ingress-nginx]
- [ ] [k8s_gateway][k8s-gateway]
- [ ] [Goldilocks][goldilocks]
- [ ] [Hajimari][hajimari]
- [ ] [Reloader][reloader]

Application scope (subject to change):

- [ ] [Nextcloud][nextcloud] _(Basic installation stuff done, customization WIP)_
- [ ] [Nitter][nitter]
- [ ] [Tiny Tiny RSS][tt-rss]

[calico]: https://www.tigera.io/project-calico/
[composable-operator]: https://github.com/composable-operator/composable
[day-2]: https://codilime.com/blog/day-0-day-1-day-2-the-software-lifecycle-in-the-cloud-age/
[db-operator]: https://github.com/kloeckner-i/db-operator
[external-dns]: https://github.com/kubernetes-sigs/external-dns
[flux]: https://fluxcd.io/
[goldilocks]: https://goldilocks.docs.fairwinds.com/
[hajimari]: https://github.com/toboshii/hajimari
[ingress-nginx]: https://kubernetes.github.io/ingress-nginx/
[k8s-gateway]: https://github.com/ori-edge/k8s_gateway
[k8up]: https://github.com/k8up-io/k8up
[k8up-issue-319]: https://github.com/k8up-io/k8up/issues/319
[nextcloud]: https://nextcloud.com/
[nitter]: https://github.com/zedeus/nitter
[reloader]: https://github.com/stakater/Reloader
[renovate]: https://docs.renovatebot.com/
[tt-rss]: https://tt-rss.org/

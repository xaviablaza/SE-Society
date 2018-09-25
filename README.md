# Society of Software Engineers
[![CircleCI](https://circleci.com/gh/ChapmanCPSC/SE-Society/tree/master.svg?style=svg)](https://circleci.com/gh/ChapmanCPSC/SE-Society/tree/master)

Staging: https://sose.uxsociety.org

## Deployment

You will need to install kubectl and configure your kubeconfig file before doing this.

This is deployed in Kubernetes. Here's an example command to run to deploy staging:

```sh
KUBECONFIG=~/.kube/config ENVIRONMENT=staging REVISION=`git rev-parse --verify master` kubernetes-deploy sesoc-staging kubernetes-admin@kubernetes
```

**Note**
- migrations are always run

Variables:

- KUBECONFIG: the kubernetes config file. If yours is in `~/.kube/config` *and* you have [direnv](https://direnv.net) installed, you can omit this. If yours is not in the default path, you can `echo export KUBECONFIG=/path/to/mine > .envrc.local` and omit it during deployment.
- ENVIRONMENT: what environment we're deploying; determines `deploy/#{environment}`
- REVISION: sets `current_sha` in the templates
- `sesoc-staging` is the staging namespace.
- `kubernetes` is the name of the cluster. If you have direnv installed, you can use `$CLUSTER` instead.

With direnv setup, the command can look like this:

```sh
ENVIRONMENT=staging REVISION=`git rev-parse --verify master` kubernetes-deploy sesoc-staging $CLUSTER
```

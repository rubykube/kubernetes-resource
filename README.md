# Concourse Kubernetes Resource

Concourse kubernetes resource with easy configuration. For now it only makes the deployment to re-pull the image.

## Installation

Add this lines to your pipeline:

```yaml
- name: kubernetes
  type: docker-image
  source:
  repository: devkube/kubernetes-resource

...

resources:
  - name: k8s
    type: kubernetes
    source:
      token:
      kubeconfig:
      namespace:
      deployment:
```

## Source configuration

* `token`: _Required_. Service account key
* `kubeconfig`: _Required_. Base64 encoded `~/.kube/config` file (see [kubectl container docs](https://github.com/rubykube/kubectl-docker#troubleshouting))
* `deployment`: _Required_. Deployment to update.
* `namespace`: _Optional_. Kubernetes namespace to use.

## Behavior

### `out`: performs deploy

Patches the deployment so it will re-pull image.

## Example

All the usage for now:

```yaml
- put: k8s
```

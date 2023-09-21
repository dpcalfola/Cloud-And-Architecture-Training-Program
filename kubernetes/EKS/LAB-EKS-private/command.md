### aws configure



```shell
eksctl create cluster -f eksctl-cluster.yaml \
  --dry-run | yh
```

```shell
eksctl create cluster -f eksctl-cluster.yaml \
  --version 1.26 \
  --ssh-access \
  --verbose 4
```
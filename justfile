create-cluster:
    kind create cluster --name homelab --config ./kind.yaml
    flux bootstrap github --token-auth --owner=yawnston --repository=homelab --branch=master --path=clusters/primary --personal

delete-cluster:
    kind delete cluster --name homelab
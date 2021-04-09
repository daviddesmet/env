# kubectl module for Prezto

[Kubectl](https://github.com/kubernetes/kubectl) module for the [Prezto](https://github.com/sorin-ionescu/prezto) Zsh configuration framework.

## Installation

1. Set the module directory using `:prezto:load:pmodule-dirs` setting in `~/.zpreztorc`:
    ```
    zstyle ':prezto:load' pmodule-dirs $HOME/.zprezto-contrib
    ```

2. Clone this repository:
    ```
    git clone https://github.com/daviddesmet/zprezto-contrib-kubectl.git ~/.zprezto-contrib/kubectl
    ```

3. Add the module to the Prezto modules to load in your `~/.zpreztorc`:
    ```
    zstyle ':prezto:load' pmodule \
      kubectl
    ```

## Aliases

- `kc` is an alias for `kubectl`
- `kaf` is an alias for `kubectl apply -f`
- `kd` is an alias for `kubectl describe`
- `kdno` is an alias for `kubectl describe nodes`
- `kdns` is an alias for `kubectl describe namespaces`
- `kdpo` is an alias for `kubectl describe pods`
- `kex` is an alias for `kubectl exec -it`
- `kg` is an alias for `kubectl get`
- `kga` is an alias for `kubectl get all`
- `kgd` is an alias for `kubectl get deploy`
- `kgi` is an alias for `kubectl get ingress`
- `kgno` is an alias for `kubectl get nodes`
- `kgns` is an alias for `kubectl get namespaces`
- `kgow` is an alias for `kubectl get -o=wide`
- `kgoy` is an alias for `kubectl get -o=yaml`
- `kgpo` is an alias for `kubectl get pods`
- `kgs` is an alias for `kubectl get service`
- `klo` is an alias for `kubectl logs -f`
- `kp` is an alias for `kubectl proxy`
- `kpf` is an alias for `kubectl port-forward`
- `krm` is an alias for `kubectl delete`
- `krmpo` is an alias for `kubectl delete pods`

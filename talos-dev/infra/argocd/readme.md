`kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`

`kubectl apply -f argocd-cmd-params-cm.yaml `

The below needs to be run after getting a valid cert in cert manager
`kubectl get secret default-valid-cert-tls -n default -o yaml |   sed 's/namespace: default/namespace: argocd/' |   kubectl apply -f -`
Set security on longhorn namespace to allow longhorn to run. 
`kubectl create namespace longhorn-system && kubectl label namespace longhorn-system pod-security.kubernetes.io/enforce=privileged`

Create local auth credentials for the longhorn ui

$ USER=<USERNAME_HERE>; PASSWORD=<PASSWORD_HERE>; echo "${USER}:$(openssl passwd -stdin -apr1 <<< ${PASSWORD})" >> auth

kubectl -n longhorn-system create secret generic basic-auth --from-file=auth



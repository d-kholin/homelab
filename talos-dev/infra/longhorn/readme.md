the following command should be run from the terraform directory
`talosctl patch mc --nodes 172.18.0.11,172.18.0.12,172.18.0.13,172.18.0.101,172.18.0.102,172.18.0.103 --patch-file files/longhorn.yaml `
Set security on longhorn namespace to allow longhorn to run. 
`kubectl create namespace longhorn-system && kubectl label namespace longhorn-system pod-security.kubernetes.io/enforce=privileged`

Create local auth credentials for the longhorn ui

$ USER=<USERNAME_HERE>; PASSWORD=<PASSWORD_HERE>; echo "${USER}:$(openssl passwd -stdin -apr1 <<< ${PASSWORD})" >> auth

kubectl -n longhorn-system create secret generic basic-auth --from-file=auth

the following command should be run from the terraform directory

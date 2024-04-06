Github action -> 

1. use Terraform install (use s3 to store state):
* create an ampere A1 OCI VM with ubuntu, 
* network, 
* SG, 
* bastion, 
* install below on vm:
  ** buildkite

2. build docker images and push to gh docker registry.


https://registry.terraform.io/modules/oracle-terraform-modules/base/oci/latest/examples/database



use buildkite (for better visibility) to install below on vm:
* Cloudflare
* microk8s, kustomize
* terraform, terragrunt

install below in mk8s:
* argo-cd
* Medusa backend, admin, storefront, 
* Postgres DB
* Cloudflared


It does not make sense to use atlantis as I don't have another server to be used as atlantis server.


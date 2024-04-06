Github action -> 

1. use Terraform install (use s3 to store state):
* create an ampere A1 OCI VM with ubuntu, 
* network, 
* SG, 
* bastion, 
* install below on vm:
  ** buildkite

2. build docker images and push to gh docker registry.


I don't need bastion host in [OCI base module](https://github.com/oracle-terraform-modules/terraform-oci-base/blob/main/docs/quickstart.adoc). I will use the free OCI bastion service instead.

https://martincarstenbach.com/2021/11/12/create-an-oci-bastion-service-via-terraform/


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


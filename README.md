# terraform-ddviws-network
## ddvi.ws Network - Terraform Infrastructure as Code on AWS 
* This TF script includes route53 hosted zone, certificate, vpc with private and public subnets, sec groups, nacls, and single ubuntu instance running nginx.
```
$terraform init
$terraform plan -var-file="prod-env.tfvars" -out prod-network.tfplan
$terraform apply -auto-aprove -var-file="prod-env.tfvars"
```

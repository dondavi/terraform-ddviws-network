# terraform-ddviws-network
## ddvi.ws Network - Terraform Infrastructure as Code on AWS 
'
$terraform init
$terraform plan -var-file="prod-env.tfvars" -out prod-network.tfplan
$terraform apply -auto-aprove -var-file="prod-env.tfvars"
'

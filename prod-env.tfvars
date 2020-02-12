/*
>terraform init
>terraform plan -var-file="prod-env.tfvars" -out prod-network.tfplan
>terraform apply -auto-aprove -var-file="prod-env.tfvars"
*/
region="us-east-1"

/* Windows */
credentials="C:\\Users\\username\\.aws\\credentials"
/* MacOs */
profile="default"



instance_name="ubuntu_nginx"
app_tag="ibr"
owner_tag="ddvi.ws"


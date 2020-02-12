resource aws_vpc "ddviws_vpc" {
cidr_block= "172.31.0.0/16"
 tags=  {
     App = "${var.app_tag}"
     Name= "ddvi.ws"
     Owner="${var.owner_tag}"
 }
}

resource aws_internet_gateway "ddviws_igw" {
 vpc_id="vpc-ae3b44cb"
 tags=  {
     App = "${var.app_tag}"
     Name= "ddvi.ws-IGW"
     Owner="${var.owner_tag}"
 }
}

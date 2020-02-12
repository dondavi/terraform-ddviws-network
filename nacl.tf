resource aws_network_acl "ddviws_nacl_all" {
  vpc_id="${aws_vpc.ddviws_vpc.id}"
   tags= {
     App = "${var.app_tag}"
     Name= "ddvi.ws-All"
     Owner="${var.owner_tag}"
   }
 }

resource aws_network_acl "ddviws_nacl_restrict" {
  vpc_id="${aws_vpc.ddviws_vpc.id}"
   tags= {
     App = "${var.app_tag}"
     Name= "ddvi.ws-Restriced"
     Owner="${var.owner_tag}"
 }
}
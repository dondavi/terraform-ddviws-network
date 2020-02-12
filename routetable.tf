resource aws_route_table "ddviws_internet" {
vpc_id="${aws_vpc.ddviws_vpc.id}"
 tags = {
     App = "${var.app_tag}"
     Name= "ddvi.ws-Internet"
     Owner="${var.owner_tag}"
 }
}

resource aws_route_table "ddviws_private" {
vpc_id="${aws_vpc.ddviws_vpc.id}"
 tags = {
     App = "${var.app_tag}"
     Name= "ddvi.ws-Private"
     Owner="${var.owner_tag}"
 }
}
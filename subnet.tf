resource aws_subnet "private1b_subnet" {
 cidr_block= "172.31.32.0/20"
 availability_zone= "us-east-1b"
 vpc_id="${aws_vpc.ddviws_vpc.id}"
  tags=  {
     App = "${var.app_tag}"
     Name= "ddvi.ws-private-1b"
     Owner="${var.owner_tag}"
 }
}


resource aws_subnet "private1e_subnet" {
 cidr_block= "172.31.0.0/20"
 vpc_id="${aws_vpc.ddviws_vpc.id}"
   tags=  {
     App = "${var.app_tag}"
     Name= "ddvi.ws-private-1e"
     Owner="${var.owner_tag}"
 }
}
resource aws_subnet "private1c_subnet" {
  cidr_block= "172.31.16.0/20"
  vpc_id="${aws_vpc.ddviws_vpc.id}"
    tags=  {
     App = "${var.app_tag}"
     Name= "ddvi.ws-private-1e"
     Owner="${var.owner_tag}"
 }
}


resource aws_subnet "webdmz1a_subnet" {
  cidr_block= "172.31.48.0/20"
  vpc_id="${aws_vpc.ddviws_vpc.id}"
    tags=  {
     App = "${var.app_tag}"
     Name= "ddvi.ws-webdmz1a"
     Owner="${var.owner_tag}"
 }

}

//data "aws_subnet_ids" "subnets" {
//  vpc_id =  "${aws_vpc.ddviws_vpc.id}"
//}

//data "aws_subnet" "subnets" {
//  for_each = data.aws_subnet_ids.subnets.ids
//  for_each = data.aws_subnet_ids.example.ids
//  id       = each.value
//}
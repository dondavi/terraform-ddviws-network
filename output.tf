output "vpc" {
  value = "${aws_vpc.ddviws_vpc}"
}
output "vpc_id" {
  value = "${aws_vpc.ddviws_vpc.id}"
}

output "vpc_cidr" {
  value = "${aws_vpc.ddviws_vpc}"
}

output "private1b_cidr_block"{
  value= "${aws_subnet.private1b_subnet.cidr_block}"
}
output "private1c_cidr_block"{
  value= "${aws_subnet.private1c_subnet.cidr_block}"
}

output "private1e_cidr_block"{
  value= "${aws_subnet.private1c_subnet.cidr_block}"
}
output "webdmz1a_cidr_block"{
  value= "${aws_subnet.webdmz1a_subnet.cidr_block}"
}


//output "subnet_cidr_blocks" {
 // value = [for s in data.aws_subnet.for-each-subnets : s.cidr_block]
//}
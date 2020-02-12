resource aws_security_group "ddviws_private_sg" {
description="database group"
 tags = {
     App = "${var.app_tag}"
     Name= "ddvi.ws-Private"
     Owner="${var.owner_tag}"
 }
}

// sg-04abfd3ae72a3d009
resource aws_security_group_rule "ddviws_private_sg_r1" {
   type="ingress"
    security_group_id="sg-04abfd3ae72a3d009"
    from_port=3306
    to_port=3306
    protocol="tcp"
    source_security_group_id = "sg-f0fc5694"
}

resource "aws_security_group_rule" "ddviws_private_sg_r2" {
  security_group_id="sg-04abfd3ae72a3d009"
  type            = "ingress"
  from_port       = 443
  to_port         = 443
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ddviws_private_sg_r3" {
  security_group_id="sg-04abfd3ae72a3d009"
  type            = "egress"
  from_port       = 0
  to_port         = 0
  protocol        = "all"
  cidr_blocks = ["0.0.0.0/0"]
}


// terraform import aws_security_group_rule.ingress sg-04abfd3ae72a3d009_ingress_tcp_3306_3306_sg-f0fc5694
// terraform import aws_security_group_rule.ingress sg-04abfd3ae72a3d009_ingress_tcp_3306_3306_10.0.3.0/24
// terraform import aws_security_group_rule.ingress_rule sg-7472697374616e_ingress_all_0_65536_sg-6176657279



resource aws_security_group "ddviws_webdmz_sg" {
description="default VPC security group"
 tags = {
     App = "${var.app_tag}"
     Name= "ddvi.ws-Internet"
     Owner="${var.owner_tag}"
 }
}

resource aws_security_group_rule "ddviws_webdmz_sg_r1" {
   type="ingress"
    security_group_id="sg-f0fc5694"
    from_port=80
    to_port=80
    protocol="tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ddviws_webdmz_sg_r2" {
  security_group_id="sg-f0fc5694"
  type            = "ingress"
  from_port       = 443
  to_port         = 443
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ddviws_webdmz_sg_r3" {
  security_group_id="sg-f0fc5694"
  type            = "ingress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
resource "aws_security_group_rule" "ddviws_webdmz_sg_r4" {
  security_group_id="sg-f0fc5694"
  type            = "egress"
  from_port       = 0
  to_port         = 0
  protocol        = "all"
  cidr_blocks = ["0.0.0.0/0"]
}

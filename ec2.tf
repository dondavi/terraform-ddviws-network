resource aws_instance "ddviws_ubuntu_nginx" {
 ami ="ami-95749fe8" // template ami-02949488258d1f19d"
 instance_type="t2.micro"
 tags = {
     App = "${var.app_tag}"
     Name= "${var.instance_name}"
     Owner="${var.owner_tag}"
 }

}


resource aws_eip "ddviws_eip" {
   tags = {
     App = "${var.app_tag}"
     Name= "${var.instance_name}"
     Owner="${var.owner_tag}"
 }
}

resource "aws_eip_association" "ddviws_eip_assoc" {
  instance_id   = "${aws_instance.ddviws_ubuntu_nginx.id}"
  allocation_id = "${aws_eip.ddviws_eip.id}"
}
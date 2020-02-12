resource aws_route53_zone "ddviws_hosted_zone" {
name="ddvi.ws"
comment="Registered in Godaddy"
}

resource aws_route53_zone "ddviio_hosted_zone" {
name="ddvi.io"
comment="Registered in AWS"
 vpc {
    vpc_id = "vpc-0df87e56976abaabb"
  }

  lifecycle {
    ignore_changes = ["vpc"]
  }
}

resource aws_route53_zone "dondavicom_hosted_zone" {
name="dondavi.com"
comment="Registered in Godaddy"
}

//resource aws_route53_zone "privddviws_hosted_zone" {
//name="priv.ddvi.ws"
//comment="Private Hosted Zone AWS"
//}
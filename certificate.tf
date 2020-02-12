resource aws_acm_certificate "ddviws_wildcard_cert" {
domain_name="*.ddvi.ws"

 tags = {
     App = "${var.app_tag}"
     Name= "ddvi.ws-Network"
     Owner="${var.owner_tag}"
 }
lifecycle {
    create_before_destroy = true
  }

}
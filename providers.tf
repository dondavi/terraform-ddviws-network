provider "aws" {
  region = "us-east-1" //"${var.region}"
  shared_credentials_file = "${var.credentials}"
  profile  =  "${var.profile}"
}


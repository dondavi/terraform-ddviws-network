variable "region" {
   type="string"
}

variable "profile" {
  type = "string"
  default = "" //must be empty string. included for debugging purposes
}
variable "credentials" {
  type="string"
  default="" //must be empty string. included for debugging purposes
}

variable "app_tag" {
  type = string
}

variable "owner_tag" {
  type = string
}

variable "instance_name" {
  type=string
}
//variable "vpc_subnets" {
//type=string
//}

//variable "subnets_list" {
//type=list(string)
//}

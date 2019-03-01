##################################################################################
## VARIABLES ##
##################################################################################

variable "aws_access_key" {}
variable "aws_secret_key" {}


##################################################################################
## PROVIDERS ##
##################################################################################

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "ap-south-1"
}


resource "aws_vpc" "dev-vpc" {
    cidr_block = "10.1.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    enable_classiclink = "false"
    #dhcp_options_id = ""
    tags {
        Name = "terrafrm-dev-vpc"
        Owner = "ajinkya"
    }
}



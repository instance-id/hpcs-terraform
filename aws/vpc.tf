# // VPC
# resource "aws_vpc" "vpc-app1" {
#   cidr_block = "${var.vpc_cidr}"
#   enable_dns_hostnames = true

#   tags {
#     Name   = "${var.vpc_name}"
#     Author = "instance.id"
#     director   = "terraform"
#   }
# }

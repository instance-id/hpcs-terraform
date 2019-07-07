# module "app1-cluster" {
#   source       = "terraform-aws-modules/eks/aws"
#   cluster_name = "app1-cluster"
#   subnets      = ["subnet-app1a", "subnet-app1b", "subnet-app1c"]
#   vpc_id       = "${aws_vpc.vpc-app1.id}"

#   worker_groups = [
#     {
#       instance_type = "t2.nano"
#       asg_max_size  = 5
#     }
#   ]

#   tags = {
#     environment = "app1-test"
#   }
# }
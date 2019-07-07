#region AWS VPC -----------------------------------------------
variable "vpc_name" {
  description = "VPC name"
  default     = "vpc_1"
}

variable "bucket" {
  description = "s3 bucket"
}

variable "key" {
  description = "key loc"
}


variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "name" {
  description = "Global Name to use"
  default     = "Default"
}

variable "az_1" {
  description = "AWS AZ 1"
}

variable "org" {
  description = "Organisation"
}
variable "env" {
  description = "Environment"
}

variable "private_access_ips" {
  description = "IPs to allow private access from"
}

#endregion 

#region EC2 Instances ----------------------------------------
variable "ami-nat" {
  default = "ami-00a9d4a05375b2763"
}
variable "ami-linux" {
  default = "ami-0de53d8956e8dcf80"
}
variable "ami-ubuntu" {
  default = "ami-0a313d6098716f372"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
  default     = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for the Private Subnet"
  default     = "10.0.1.0/24"
}


#endregion 

#region Credentials -----------------------------------------
variable "shared_credentials_file" {
  description = "AWS credentials file path"
}
variable "aws_profile" {
}

variable "alarms_email" {
  description = "Email address for Cloudwatch Alarms"
}
#endregion 


# ----------------------------------------------------------------------------------------------

variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = "list"

  default = [
    "777777777777",
    "888888888888",
  ]
}

variable "map_accounts_count" {
  description = "The count of accounts in the map_accounts list."
  type        = "string"
  default     = 2
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type        = "list"

  default = [
    {
      role_arn = "arn:aws:iam::66666666666:role/role1"
      username = "role1"
      group    = "system:masters"
    },
  ]
}

variable "map_roles_count" {
  description = "The count of roles in the map_roles list."
  type        = "string"
  default     = 1
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type        = "list"

  default = [
    {
      user_arn = "arn:aws:iam::66666666666:user/user1"
      username = "user1"
      group    = "system:masters"
    },
    {
      user_arn = "arn:aws:iam::66666666666:user/user2"
      username = "user2"
      group    = "system:masters"
    },
  ]
}

variable "map_users_count" {
  description = "The count of roles in the map_users list."
  type        = "string"
  default     = 2
}

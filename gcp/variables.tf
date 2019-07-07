variable "zone" {
  description = "Project zone locations"
}

variable "zone2" {
  description = "Project zone locations"
}

variable "region" {
  description = "Project zone locations"
}

variable "region2" {
  description = "Project zone locations"
}

variable "name" {
  description = "Name of project for resources"
}

variable "machine_type" {
  description = "description"
}

variable "machine_type_custom_ram" {
  description = "description"
}

variable project_roles {
  type = "list"

  default = []
}

variable storage_class {
  default = "REGIONAL"
}

// --- Credentials ------------------------------------------------------------
variable compute_ssh_user {
  default = "ubuntu"
}

variable "compute_ssh_user_key" {}

// --- Network Web 1 ----------------------------------------------------------
variable "instance-tags-web-1" {
  default = "hpcsdev-web-1"
}

variable "subnet_name" {
  default = "hpcsdev-public"
}

variable "subnet_cidr" {
  default = "10.10.0.0/24"
}

// --- Network Web 2 ----------------------------------------------------------
variable "instance-tags-web-2" {
  default = "hpcsdev-web-2"
}

variable "subnet-name-web-2" {
  default = "hpcsdev-public-web-2"
}

variable "subnet-cidr-web-2" {
  default = "10.10.0.0/24"
}

variable "natip" {
  description = "natip"
}

variable "service-acct-email" {
  description = "service account email"
}

variable "service-acct-name1" {
  description = "service account name"
}

variable "service-acct-name2" {
  description = "service account name"
}

service-acct-name1

variable "ports-web1" {
  type    = "list"
  default = []
}

variable "ports-web2" {
  type    = "list"
  default = []
}

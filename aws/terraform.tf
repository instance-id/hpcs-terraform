// --- Terraform Artifacts ------------------------------------------
terraform {
  backend "s3" {
    profile = "${var.aws_profile}"
    bucket  = "${var.bucket}"
    key     = "${var.key}"
    region  = "${var.region}"
  }
}

// --- AWS Main Configuration --------------------------------------
provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.aws_profile}"
}

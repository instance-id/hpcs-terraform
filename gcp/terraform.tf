terraform {
  backend "gcs" {
    bucket = "hpcsdev-tfstate"
  }
}

provider "google" {
  version = "~> 2.5"
  project = "${var.name}"
  region  = "${var.region}"
}


resource "google_storage_bucket" "hpcsdev-terraform-state" {
  /* name = "tfstate-${var.name}" */
  name     = "${var.name}-tfstate"
  location = "${var.region}"

  storage_class = "${var.storage_class}"

  versioning {
    enabled = true
  }

  labels = {
    env = "${var.name}-prod"
    app = "terraform"
  }
}

resource "google_storage_bucket" "hpcsdev-backups" {
  name          = "${var.name}-backups"
  location      = "${var.region}"
  storage_class = "${var.storage_class}"

  labels = {
    env = "${var.name}-prod"
    app = "terraform"
    use = "backups"
  }

  lifecycle {
    prevent_destroy = true
  }
}

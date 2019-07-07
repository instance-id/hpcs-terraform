# // --- SERVICE ACCOUNTS -----------------------------------------------------

resource "google_service_account" "terraform-user" {
  account_id   = "${var.service-acct-name1}"
  display_name = "terraform_user"
}

resource "google_service_account" "hpcsdev-backups-bucket" {
  account_id   = "${var.service-acct-name2}"
  display_name = "HPCSdev Backup ${title(var.name)} Admin"
}

resource "google_storage_bucket_iam_binding" "hpcsdev-backups-binding" {
  bucket = "${google_storage_bucket.hpcsdev-backups.name}"
  role   = "roles/storage.objectAdmin"

  members = [
    "serviceAccount:${google_service_account.hpcsdev-backups-bucket.email}",
  ]
}

resource "google_storage_bucket_iam_binding" "hpcsdev-tfstate-binding" {
  bucket = "${google_storage_bucket.hpcsdev-terraform-state.name}"
  role   = "roles/storage.objectAdmin"

  members = [
    "serviceAccount:${google_service_account.terraform-user.email}",
  ]
}

// --- Namecheap configuration ------------------------------------------------
provider "namecheap" {
  username    = "${var.username}"
  api_user    = "${var.api-user}"
  token       = "${var.api-access-token}"
  ip          = "${var.ip}"
  use_sandbox = "${var.use-sandbox}"
}

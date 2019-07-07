# Configure the Cloudflare provider
provider "cloudflare" {
  email = "${var.cloudflare_email}"
  token = "${var.cloudflare_token}"
}

resource "cloudflare_zone" "domain" {
  zone = "${var.cloudflare_domain}"
}

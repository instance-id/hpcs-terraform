# Add a record alias to our staging domain
variable "domain" {
  default = "termani.dev"
}

resource "digitalocean_domain" "termanidev" {
  name       = "${var.domain}"
  ip_address = "${var.secondary-ip}"
}

resource "digitalocean_record" "termanidev_root_A" {
  domain = "${var.domain}"
  type   = "A"
  name   = "1"
  value  = "${var.primary-ip}"
}


# output "domain_output" {
#   value = "${digitalocean_domain.termanidev.}"
# }


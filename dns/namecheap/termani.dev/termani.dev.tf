// --- termani.dev records -----------------------------------------------
variable "domain" {
  default="termani.dev"
}

resource "namecheap_record" "termanidev-ns1" {
  domain  = "${var.domain}"
  name    = "ns1"
  address = "ns1.digitalocean.com"
  type    = "NS"
}

resource "namecheap_record" "termanidev-ns2" {
  domain  = "${var.domain}"
  name    = "ns2"
  address = "ns2.digitalocean.com"
  type    = "NS"
}

resource "namecheap_record" "termanidev-ns3" {
  domain  = "${var.domain}"
  name    = "ns3"
  address = "ns3.digitalocean.com"
  type    = "NS"
}

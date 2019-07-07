// --- Cloudflare records -----------------------------------------------------
// --- A Records ------------------------------------------
resource "cloudflare_record" "domain_A" {
  domain     = var.domain
  name       = "@"
  proxied    = true
  type       = "A"
  value      = var.cloudflare_ip_primary
  depends_on = [namecheap_ns.unityassetdev-ns1]
}

// --- CNAME Records --------------------------------------
resource "cloudflare_record" "domain_CNAME_www" {
  domain     = var.domain
  name       = "www"
  proxied    = true
  type       = "CNAME"
  value      = var.domain
  depends_on = [namecheap_ns.unityassetdev-ns1]
}

// --- MX Records -----------------------------------------
resource "cloudflare_record" "domain_MX_0" {
  domain     = var.domain
  name       = "@"
  priority   = 1
  proxied    = false
  type       = "MX"
  value      = "aspmx.l.google.com"
  depends_on = [namecheap_ns.unityassetdev-ns1]
}

resource "cloudflare_record" "domain_MX_1" {
  domain     = var.domain
  name       = "@"
  priority   = 5
  proxied    = false
  type       = "MX"
  value      = "alt1.aspmx.l.google.com"
  depends_on = [namecheap_ns.unityassetdev-ns1]
}

resource "cloudflare_record" "domain_MX_2" {
  domain     = var.domain
  name       = "@"
  priority   = 5
  proxied    = false
  type       = "MX"
  value      = "alt2.aspmx.l.google.com"
  depends_on = [namecheap_ns.unityassetdev-ns1]
}

resource "cloudflare_record" "domain_MX_3" {
  domain     = var.domain
  name       = "@"
  priority   = 10
  proxied    = false
  type       = "MX"
  value      = "aspmx2.googlemail.com"
  depends_on = [namecheap_ns.unityassetdev-ns1]
}

resource "cloudflare_record" "domain_MX_4" {
  domain     = var.domain
  name       = "@"
  priority   = 10
  proxied    = false
  type       = "MX"
  value      = "aspmx3.googlemail.com"
  depends_on = [namecheap_ns.unityassetdev-ns1]
}

// --- TXT Records ----------------------------------------
# "resource" "cloudflare_record" "domain_TXT_Google" {
#   "domain" = "${var.domain}"
#   "name" = "@"
#   "proxied" = false
#   "type" = "TXT"
#   "value" = "v=spf1 include:spf.efwd.registrar-servers.com ~all"
# }

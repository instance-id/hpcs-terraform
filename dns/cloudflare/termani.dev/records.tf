// --- A Records ---------------------------------------------------------
resource "cloudflare_record" "termani_dev_A" {
  zone_id = var.cloudflare_zone
  name    = "@"
  proxied = true
  type    = "A"
  value   = var.cloudflare_ip_primary
}

resource "cloudflare_record" "www2_termani_dev_A" {
  zone_id = var.cloudflare_zone
  name    = "www2"
  proxied = true
  type    = "A"
  value   = var.cloudflare_ip_secondary
}

resource "cloudflare_record" "ha_termani_dev_A" {
  zone_id = var.cloudflare_zone
  name    = "ha"
  proxied = false
  type    = "A"
  value   = var.cloudflare_ip_home
}

resource "cloudflare_record" "www_termani_dev_CNAME" {
  zone_id = var.cloudflare_zone
  name    = "www"
  proxied = true
  type    = "CNAME"
  value   = var.cloudflare_domain
}

// --- MX Records --------------------------------------------------------
resource "cloudflare_record" "termani_dev_MX_0" {
  zone_id  = var.cloudflare_zone
  name     = "@"
  priority = 1
  proxied  = false
  type     = "MX"
  value    = "aspmx.l.google.com"
}

resource "cloudflare_record" "termani_dev_MX_1" {
  zone_id  = var.cloudflare_zone
  name     = "@"
  priority = 5
  proxied  = false
  type     = "MX"
  value    = "alt1.aspmx.l.google.com"
}

resource "cloudflare_record" "termani_dev_MX_2" {
  zone_id  = var.cloudflare_zone
  name     = "@"
  priority = 5
  proxied  = false
  type     = "MX"
  value    = "alt2.aspmx.l.google.com"
}

resource "cloudflare_record" "termani_dev_MX_3" {
  zone_id  = var.cloudflare_zone
  name     = "@"
  priority = 10
  proxied  = false
  type     = "MX"
  value    = "alt3.aspmx.l.google.com"
}

resource "cloudflare_record" "termani_dev_MX_4" {
  zone_id  = var.cloudflare_zone
  name     = "@"
  priority = 10
  proxied  = false
  type     = "MX"
  value    = "alt4.aspmx.l.google.com"
}

// --- Txt Records -------------------------------------------------
resource "cloudflare_record" "termani_dev_TXT_1" {
  zone_id = var.cloudflare_zone
  name    = "@"
  proxied = false
  type    = "TXT"
  value   = "google-site-verification=${var.cloudflare_txt_google_verification}"
}

// --------------------------------------------------------- Testing
# locals {
#   cf_zone_id = var.cloudflare_zone
#   all_records = [
#     # Record type, record name, IP Address/value, is-proxied?
#     ["A", "@", var.cloudflare_ip_primary, true],
#     ["A", "www2", var.cloudflare_ip_secondary, true],
#     ["A", "ha", var.cloudflare_ip_home, false],
#     ["CNAME", "www", var.cloudflare_domain, true],
#     ["MX", "@", "aspmx.l.google.com", false, 1],
#     ["MX", "@", "alt1.aspmx.l.google.com", false, 5],
#     ["MX", "@", "alt2.aspmx.l.google.com", false, 5],
#     ["MX", "@", "alt3.aspmx.l.google.com", false, 10],
#     ["MX", "@", "alt4.aspmx.l.google.com", false, 10],
#     ["TXT", "@", "google-site-verification=var.cloudflare_txt_google_verification", false],
#   ]
# }

# resource "cloudflare_record" "root-level" {
#   count    = length(local.all_records)
#   zone_id  = local.cf_zone_id
#   type     = local.all_records[count.index][0]
#   name     = local.all_records[count.index][1]
#   value    = local.all_records[count.index][2]
#   proxied  = local.all_records[count.index][3]
#   priority = "${local.all_records[count.index][0] == "MX" ? local.all_records[count.index][4] : null}"
# }

output "zoneid" {
  value = cloudflare_zone.termani.id
}

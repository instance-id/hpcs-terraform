// --- A Records ---------------------------------------------------------
"resource" "cloudflare_record" "termani_dev_A" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "@"
  "proxied" = true
  "type"    = "A"
  value     = "${var.cloudflare_ip_primary}"
}

"resource" "cloudflare_record" "www2_termani_dev_A" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "www2"
  "proxied" = true
  "type"    = "A"
  value     = "${var.cloudflare_ip_secondary}"
}

"resource" "cloudflare_record" "www_termani_dev_CNAME" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "www"
  "proxied" = true
  "type"    = "CNAME"
  "value"   = "${var.cloudflare_domain}"
}

// --- MX Records --------------------------------------------------------
"resource" "cloudflare_record" "termani_dev_MX_0" {
  domain     = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 1
  "proxied"  = false
  "type"     = "MX"
  "value"    = "aspmx.l.google.com"
}

"resource" "cloudflare_record" "termani_dev_MX_1" {
  domain     = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 5
  "proxied"  = false
  "type"     = "MX"
  "value"    = "alt1.aspmx.l.google.com"
}

"resource" "cloudflare_record" "termani_dev_MX_2" {
  domain     = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 5
  "proxied"  = false
  "type"     = "MX"
  "value"    = "alt2.aspmx.l.google.com"
}

"resource" "cloudflare_record" "termani_dev_MX_3" {
  domain     = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 10
  "proxied"  = false
  "type"     = "MX"
  "value"    = "alt3.aspmx.l.google.com"
}

"resource" "cloudflare_record" "termani_dev_MX_4" {
  domain     = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 10
  "proxied"  = false
  "type"     = "MX"
  "value"    = "alt4.aspmx.l.google.com"
}

// --- Txt Records -------------------------------------------------
"resource" "cloudflare_record" "termani_dev_TXT_1" {
  "domain" = "${var.cloudflare_domain}"
  "name" = "@"
  "proxied" = false
  "type" = "TXT"
  "value" = "google-site-verification=${var.cloudflare_txt_google_verification}"
}
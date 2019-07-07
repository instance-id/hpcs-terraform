// --- A Records ---------------------------------------------------------
"resource" "cloudflare_record" "1domain1_A" {
  "domain"  = "${var.cloudflare_domain}"
  "name"    = "@"
  "proxied" = true
  "type"    = "A"
  "value"   = "${var.cloudflare_ip_primary}"
}

// --- CNAME Records -----------------------------------------------------
"resource" "cloudflare_record" "www_1domain1_CNAME" {
  "domain"  = "${var.cloudflare_domain}"
  "name"    = "www"
  "proxied" = true
  "type"    = "CNAME"
  "value"   = "${var.cloudflare_domain}"
}

// --- MX Records --------------------------------------------------------
"resource" "cloudflare_record" "1domain1_MX_0" {
  "domain"   = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 1
  "proxied"  = false
  "type"     = "MX"
  "value"    = "aspmx.l.google.com"
}

"resource" "cloudflare_record" "1domain1_MX_1" {
  "domain"   = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 5
  "proxied"  = false
  "type"     = "MX"
  "value"    = "alt1.aspmx.l.google.com"
}

"resource" "cloudflare_record" "1domain1_MX_2" {
  "domain"   = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 5
  "proxied"  = false
  "type"     = "MX"
  "value"    = "alt2.aspmx.l.google.com"
}

"resource" "cloudflare_record" "1domain1_MX_3" {
  "domain"   = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 10
  "proxied"  = false
  "type"     = "MX"
  "value"    = "ASPMX2.GOOGLEMAIL.COM"
}

"resource" "cloudflare_record" "1domain1_MX_4" {
  "domain"   = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 10
  "proxied"  = false
  "type"     = "MX"
  "value"    = "ASPMX3.GOOGLEMAIL.COM"
}

// --- TXT Records -------------------------------------------------------
# "resource" "cloudflare_record" "1domain1_TXT_1" {
#   "domain" = "${var.cloudflare_domain}"
#   "name" = "@"
#   "proxied" = false
#   "type" = "TXT"
#   "value" = "v=spf1 include:spf.efwd.registrar-servers.com ~all"
# }


# "resource" "cloudflare_record" "1domain1_TXT_2" {
#   "domain" = "${var.cloudflare_domain}"
#   "name" = "@"
#   "proxied" = false
#   "type" = "TXT"
#   "value" = "${var.cloudflare_txt_google_verification}"
# }


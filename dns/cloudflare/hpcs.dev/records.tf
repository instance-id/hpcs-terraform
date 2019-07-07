// --- A Records ---------------------------------------------------------
"resource" "cloudflare_record" "hpcs_dev_A" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "@"
  "proxied" = true
  "type"    = "A"
  value     = "${var.cloudflare_ip_hpcsdev}"
}

"resource" "cloudflare_record" "www2_hpcs_dev_A" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "www2"
  "proxied" = true
  "type"    = "A"
  value     = "${var.cloudflare_ip_hpcsdev2}"
}

// --- CNAME Records -----------------------------------------------------

"resource" "cloudflare_record" "code_hpcs_dev_CNAME" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "code"
  "proxied" = true
  "type"    = "CNAME"
  "value"   = "${var.cloudflare_domain}"
}

"resource" "cloudflare_record" "dev-forum_hpcs_dev_CNAME" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "dev-forum"
  "proxied" = true
  "type"    = "CNAME"
  "value"   = "${var.cloudflare_domain}"
}

"resource" "cloudflare_record" "dev-web_hpcs_dev_CNAME" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "dev-web"
  "proxied" = true
  "type"    = "CNAME"
  "value"   = "${var.cloudflare_domain}"
}

"resource" "cloudflare_record" "forum_hpcs_dev_CNAME" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "forum"
  "proxied" = true
  "type"    = "CNAME"
  "value"   = "${var.cloudflare_domain}"
}

"resource" "cloudflare_record" "grafana_hpcs_dev_CNAME" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "grafana"
  "proxied" = true
  "type"    = "CNAME"
  "value"   = "${var.cloudflare_domain}"
}

"resource" "cloudflare_record" "logs_hpcs_dev_CNAME" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "logs"
  "proxied" = true
  "type"    = "CNAME"
  "value"   = "${var.cloudflare_domain}"
}

"resource" "cloudflare_record" "prometheus_hpcs_dev_CNAME" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "prometheus"
  "proxied" = true
  "type"    = "CNAME"
  "value"   = "${var.cloudflare_domain}"
}

"resource" "cloudflare_record" "www_hpcs_dev_CNAME" {
  domain    = "${var.cloudflare_domain}"
  "name"    = "www"
  "proxied" = true
  "type"    = "CNAME"
  "value"   = "${var.cloudflare_domain}"
}

// --- MX Records --------------------------------------------------------
"resource" "cloudflare_record" "hpcs_dev_MX_0" {
  domain     = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 1
  "proxied"  = false
  "type"     = "MX"
  "value"    = "aspmx.l.google.com"
}

"resource" "cloudflare_record" "hpcs_dev_MX_1" {
  domain     = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 5
  "proxied"  = false
  "type"     = "MX"
  "value"    = "alt1.aspmx.l.google.com"
}

"resource" "cloudflare_record" "hpcs_dev_MX_2" {
  domain     = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 5
  "proxied"  = false
  "type"     = "MX"
  "value"    = "alt2.aspmx.l.google.com"
}

"resource" "cloudflare_record" "hpcs_dev_MX_3" {
  domain     = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 10
  "proxied"  = false
  "type"     = "MX"
  "value"    = "alt3.aspmx.l.google.com"
}

"resource" "cloudflare_record" "hpcs_dev_MX_4" {
  domain     = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 10
  "proxied"  = false
  "type"     = "MX"
  "value"    = "alt4.aspmx.l.google.com"
}

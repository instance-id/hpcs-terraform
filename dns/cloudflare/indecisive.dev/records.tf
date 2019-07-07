// --- A Records ---------------------------------------------------------
"resource" "cloudflare_record" "indecisive_dev_A_4e1d289ef17ff20e7bfa5d9faebfb6d4" {
  "domain"  = "${var.cloudflare_domain}"
  "name"    = "@"
  "proxied" = true
  "type"    = "A"
  "value"   = "${var.cloudflare_ip_indecisivedev}"
}

// --- CNAME Records -----------------------------------------------------
"resource" "cloudflare_record" "www_indecisive_dev_CNAME_0ea0c0c01b737292f45e5c94fea3b72a" {
  "domain"  = "${var.cloudflare_domain}"
  "name"    = "www"
  "proxied" = true
  "type"    = "CNAME"
  "value"   = "${var.cloudflare_domain}"
}

// --- MX Records --------------------------------------------------------
"resource" "cloudflare_record" "indecisive_dev_MX_4d77595850f9e28b1e09d48b27da7d78" {
  "domain"   = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 1
  "proxied"  = false
  "type"     = "MX"
  "value"    = "aspmx.l.google.com"
}

"resource" "cloudflare_record" "indecisive_dev_MX_55288337407a3de871c7b97d9cb0168d" {
  "domain"   = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 5
  "proxied"  = false
  "type"     = "MX"
  "value"    = "alt1.aspmx.l.google.com"
}

"resource" "cloudflare_record" "indecisive_dev_MX_f8a20c4e5caa5f14e47b39b793418a8e" {
  "domain"   = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 5
  "proxied"  = false
  "type"     = "MX"
  "value"    = "alt2.aspmx.l.google.com"
}

"resource" "cloudflare_record" "indecisive_dev_MX_bbc193acd858a70a8253294e57aa9f58" {
  "domain"   = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 10
  "proxied"  = false
  "type"     = "MX"
  "value"    = "ASPMX2.GOOGLEMAIL.COM"
}

"resource" "cloudflare_record" "indecisive_dev_MX_ced9831171f93ccafd1503fa5e835c16" {
  "domain"   = "${var.cloudflare_domain}"
  "name"     = "@"
  "priority" = 10
  "proxied"  = false
  "type"     = "MX"
  "value"    = "ASPMX3.GOOGLEMAIL.COM"
}

// --- TXT Records -------------------------------------------------------
"resource" "cloudflare_record" "indecisive_dev_TXT_05c2c2e4d5a9051744beb4d9e64e910a" {
  "domain"  = "${var.cloudflare_domain}"
  "name"    = "@"
  "proxied" = false
  "type"    = "TXT"
  "value"   = "v=spf1 include:spf.efwd.registrar-servers.com ~all"
}

"resource" "cloudflare_record" "indecisive_dev_TXT_e5e727ff11cbe761ffecdbf9cb1f9b9c" {
  "domain"  = "${var.cloudflare_domain}"
  "name"    = "@"
  "proxied" = false
  "type"    = "TXT"
  "value"   = "${var.cloudflare_txt_google_verification}"
}

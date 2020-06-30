
resource "cloudflare_record" "chat_instance_id_A_ee35eafc7d67dbdb8354262a20942a00" {
  zone_id = var.cloudflare_zone
  value   = "104.248.108.129"
  type    = "A"
  proxied = true
  name    = "chat"
}

resource "cloudflare_record" "db_instance_id_A_47ad2f10b7124f2944ff636583447248" {
  zone_id = var.cloudflare_zone
  value   = "104.248.108.129"
  type    = "A"
  proxied = true
  name    = "db"
}

resource "cloudflare_record" "dev_instance_id_A_9605d5b272f7c7ee4b7fa0fe3f5225ef" {
  zone_id = var.cloudflare_zone
  value   = "206.189.200.206"
  type    = "A"
  proxied = true
  name    = "dev"
}

resource "cloudflare_record" "discord_instance_id_A_ef44de1aecc5bf2073a92207ad46e67b" {
  zone_id = var.cloudflare_zone
  value   = "104.248.108.129"
  type    = "A"
  proxied = true
  name    = "discord"
}

resource "cloudflare_record" "docs_instance_id_A_1540c0890cfd55a4206006c9fb167ee9" {
  zone_id = var.cloudflare_zone
  value   = "104.248.108.129"
  type    = "A"
  proxied = true
  name    = "docs"
}

# -------------------------------------------------------------------------- Primary
resource "cloudflare_record" "instance_id_A_d736476accab9fa08ec41d5fec1101cd" {
  zone_id = var.cloudflare_zone
  value   = "185.199.111.153"
  type    = "A"
  proxied = true
  name    = "@"
}

resource "cloudflare_record" "instance_id_A_8173b4fae6db0a01508c8a5edfe7a50a" {
  zone_id = var.cloudflare_zone
  value   = "185.199.110.153"
  type    = "A"
  proxied = true
  name    = "@"
}

resource "cloudflare_record" "instance_id_A_0200e5e9ac8af644e0cae9814cce7530" {
  zone_id = var.cloudflare_zone
  value   = "185.199.109.153"
  type    = "A"
  proxied = true
  name    = "@"
}

resource "cloudflare_record" "instance_id_A_14edc4bb5f0b9367ec2f6703b791df27" {
  zone_id = var.cloudflare_zone
  value   = "185.199.108.153"
  type    = "A"
  proxied = true
  name    = "@"
}

# ----------------------------------------------------------------------------- News
resource "cloudflare_record" "news_instance_id_A_975ff39165be8b4893a03f51361fe60e" {
  zone_id = var.cloudflare_zone
  value   = "206.189.200.206"
  type    = "A"
  proxied = true
  name    = "news"
}

# ------------------------------------------------------------------------- Searcher
resource "cloudflare_record" "searcher_instance_id_A_82d5108a73e593d1e07ebf37fe25ce2d" {
  zone_id = var.cloudflare_zone
  value   = "192.175.117.13"
  type    = "A"
  proxied = true
  name    = "searcher"
}

# ----------------------------------------------------------------------- ArtStation
resource "cloudflare_record" "as_instance_id_A" {
  zone_id = var.cloudflare_zone
  value   = "192.175.117.13"
  type    = "A"
  proxied = true
  name    = "as"
}

resource "cloudflare_record" "www_as_instance_id_CNAME" {
  zone_id = var.cloudflare_zone
  value   = "as.instance.id"
  type    = "CNAME"
  proxied = true
  name    = "www.as"
}

resource "cloudflare_page_rule" "searcher_redirect_instance_id" {
  zone_id  = var.cloudflare_zone
  target   = "searcher.instance.id"
  priority = 1

  actions {
    forwarding_url {
      url         = "https://as.instance.id/store/Kx1v/searcher-search-everything"
      status_code = 301
    }
  }
}

# ----------------------------------------------------------------------------- Test
resource "cloudflare_record" "test_instance_id_A_1beb3372eef00ea7f19a9a35d3d5ca2a" {
  zone_id = var.cloudflare_zone
  value   = "104.248.108.129"
  type    = "A"
  proxied = true
  name    = "test"
}

resource "cloudflare_record" "www_instance_id_CNAME_7683606e3eae4148b5cb4a0da87028bb" {
  zone_id = var.cloudflare_zone
  value   = "instance-id.github.io"
  type    = "CNAME"
  proxied = true
  name    = "www"
}

resource "cloudflare_record" "zzzzzzzzzz_instance_id_TXT_9a713485f654208e7b8564b53152eb95" {
  zone_id = var.cloudflare_zone
  value   = "206.189.200.206"
  type    = "TXT"
  proxied = false
  name    = "1zzzzzzzzzz"
}

resource "cloudflare_record" "instance_id_TXT_68bff5e8b5a0b56e89256c47f5690cdb" {
  zone_id = var.cloudflare_zone
  value   = "firebase=searcher-id"
  type    = "TXT"
  proxied = false
  name    = "@"
}

resource "cloudflare_record" "instance_id_TXT_47de6448c54c4ac4f3ff1656f4c24f31" {
  zone_id = var.cloudflare_zone
  value   = var.cloudflare_txt_google_verification
  type    = "TXT"
  proxied = false
  name    = "@"
  ttl     = 3600
}

# ------------------------------------------------------------------------ EMAIL:TXT
resource "cloudflare_record" "instance_id_TXT_c3e56bd5c7e7f42b4b6f10fdf7df1856" {
  zone_id = var.cloudflare_zone
  value   = "v=spf1 include:_spf.google.com include:_spf.firebasemail.com ~all"
  type    = "TXT"
  proxied = false
  name    = "@"
}

resource "cloudflare_record" "instance_id_dkim" {
  zone_id = var.cloudflare_zone
  value   = "v=DKIM1; k=rsa; p=${var.cloudflare_dkim_key}"
  type    = "TXT"
  proxied = false
  name    = "google._domainkey"
}

resource "cloudflare_record" "instance_id_dmarc" {
  zone_id = var.cloudflare_zone
  value   = "v=DMARC1; p=quarantine; rua=mailto:dmarc@instance.id; pct=90; sp=none"
  type    = "TXT"
  proxied = false
  name    = "_dmarc.instance.id"
}

resource "cloudflare_record" "firebase1__domainkey_instance_id_CNAME_72f6c736c655142fa97ddbd627246377" {
  zone_id  = var.cloudflare_zone
  value    = "mail-instance-id.dkim1._domainkey.firebasemail.com"
  type     = "CNAME"
  name     = "firebase1._domainkey.instance.id"
  proxied  = false
  ttl      = 1
  priority = 0

}

resource "cloudflare_record" "firebase2__domainkey_instance_id_CNAME_b26e6764682d27dd6e3964c8aa274106" {
  zone_id  = var.cloudflare_zone
  value    = "mail-instance-id.dkim2._domainkey.firebasemail.com"
  type     = "CNAME"
  name     = "firebase2._domainkey.instance.id"
  proxied  = false
  ttl      = 1
  priority = 0
}

# email - servers -----------------------------------------------------------------------------------------------------
resource "cloudflare_record" "instance_id_MX_1e2b9506adbec7e93709d0f1f2c3057f" {
  zone_id  = var.cloudflare_zone
  value    = "aspmx.l.google.com"
  type     = "MX"
  proxied  = false
  name     = "@"
  priority = 1
  ttl      = 1800
}

resource "cloudflare_record" "instance_id_MX_f2e58b71ae57904883e16b2edb563c84" {
  zone_id  = var.cloudflare_zone
  value    = "alt4.aspmx.l.google.com"
  type     = "MX"
  proxied  = false
  name     = "@"
  priority = 10
  ttl      = 1800
}

resource "cloudflare_record" "instance_id_MX_175663c838565aa5f2213a70e40939bf" {
  zone_id  = var.cloudflare_zone
  value    = "alt3.aspmx.l.google.com"
  type     = "MX"
  proxied  = false
  name     = "@"
  priority = 10
  ttl      = 1800
}

resource "cloudflare_record" "instance_id_MX_a4ce6bed4562746531a11b10a2e162b7" {
  zone_id  = var.cloudflare_zone
  value    = "alt2.aspmx.l.google.com"
  type     = "MX"
  proxied  = false
  name     = "@"
  priority = 5
  ttl      = 1800
}

resource "cloudflare_record" "instance_id_MX_0a9fc40680bb401910b1d5f407caebf1" {
  zone_id  = var.cloudflare_zone
  value    = "alt1.aspmx.l.google.com"
  type     = "MX"
  proxied  = false
  name     = "@"
  priority = 5
  ttl      = 1800
}

// --- G-Suite ----------------------------------------------------------------
provider "gsuite" {
  credentials             = ".secret/credentials.json"
  impersonated_user_email = var.gsuite_email

  oauth_scopes = [
    "https://www.googleapis.com/auth/admin.directory.group",
    "https://www.googleapis.com/auth/admin.directory.user",
    "https://www.googleapis.com/auth/admin.directory.domain",
  ]
}

// --- Namecheap configuration ------------------------------------------------
provider "namecheap" {
  username    = var.namecheap_username
  api_user    = var.namecheap_api-user
  token       = var.namecheap_api-access-token
  ip          = var.namecheap_ip
  use_sandbox = var.namecheap_use-sandbox
}

// --- Cloudflares configuration ----------------------------------------------
provider "cloudflare" {
  version = "~> 1.15"
  email   = var.cloudflare_email
  token   = var.cloudflare_token
}

resource "cloudflare_zone" "unityassetdev-cf-z" {
  zone = var.domain
  plan = "free"
}


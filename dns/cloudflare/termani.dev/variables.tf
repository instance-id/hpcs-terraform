// HPCSDev Cloudflare
variable "cloudflare_email" {
  description = "Cloudflare User Email"
}

variable "cloudflare_api_key" {
  description = "Cloudflare User Token"
}

variable "cloudflare_domain" {
  default = "hpcs.dev"
}
variable "cloudflare_zone" {
  default = "termani.dev"
}

variable "cloudflare_ip_primary" {
  default = "0.0.0.0"
}

variable "cloudflare_ip_secondary" {
  default = "0.0.0.0"
}

variable "cloudflare_ip_backup" {
  default = "0.0.0.0"
}

variable "cloudflare_ip_home" {
  default = "0.0.0.0"
}

variable "cloudflare_txt_google_verification" {
  description = "Google Site Verification TXT"
}

// HPCSDev Cloudflare
variable "cloudflare_email" {
  description = "Cloudflare User Email"
}

variable "cloudflare_token" {
  description = "Cloudflare User Token"
}

variable "cloudflare_domain" {
  default = "hpcs.dev"
}

variable "cloudflare_ip_hpcsdev" {
  default = "0.0.0.0"
}

variable "cloudflare_ip_hpcsdev2" {
  default = "0.0.0.0"
}

variable "cloudflare_txt_google_verification" {
  description = "Google Site Verification TXT"
}

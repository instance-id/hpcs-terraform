// Cloudflare variables
variable "cloudflare_email" {
  description = "Cloudflare User Email"
}
variable "cloudflare_api_key" {
  description = "Cloudflare User Token"
}
variable "cloudflare_domain" {
  default = "instance.id"
}
variable "cloudflare_zone" {
  default = "instance.id"
}
variable "cloudflare_ip_primary" {
  default = "0.0.0.0"
}
variable "cloudflare_ip_secondary" {
  default = "0.0.0.0"
}
variable "cloudflare_txt_google_verification" {
  description = "Google Site Verification TXT"
}
variable "cloudflare_dkim_key"{
  default = ""
}
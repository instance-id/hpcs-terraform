provider "gsuite" {
  credentials             = ".secret/credentials.json"
  impersonated_user_email = "${var.gsuite_email}"

  oauth_scopes = [
    "https://www.googleapis.com/auth/admin.directory.group",
    "https://www.googleapis.com/auth/admin.directory.user",
    "https://www.googleapis.com/auth/admin.directory.domain",
  ]
}

resource "gsuite_domain" "termani-dev" {
  domain_name = "termani.dev"
}

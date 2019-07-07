// --- G-Suite Records --------------------------------------------------------
// --- Domain Records -------------------------------------
resource "gsuite_domain" "unityassetdev-gs-d" {
  domain_name = var.domain
}


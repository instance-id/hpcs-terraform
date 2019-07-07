// --- Namecheap records ------------------------------------------------------
// --- NameServers ----------------------------------------
resource "namecheap_ns" "unityassetdev-ns1" {
  domain  = var.domain
  servers = cloudflare_zone.unityassetdev-cf-z.name_servers
}

